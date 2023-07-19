//
//  StorelListRatingAndDistanceFilterView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 09/07/23.
//

import SwiftUI

struct StorelListRatingAndDistanceFilterView: View {
    
    @Binding var ratingStars: Int
    @Binding var initialDistance: Double
    
    var body: some View {
        HStack {
            makeRatingFilterView()
            makeDistanceFilterView()
        }
        .foregroundColor(Color("ColorRed"))
    }
    
    private func makeRatingFilterView() -> some View {
        Menu("Estrelas") {
            Button {
                ratingStars = 0
            } label: {
                Text("Limpar filtro")
            }
            
            Divider()
            
            ForEach(1...5, id: \.self) { rating in
                Button {
                    ratingStars = rating
                } label: {
                    if rating == 1 {
                        Text("\(rating) estrela ou mais")
                    } else if rating > 1 && rating < 5 {
                        Text("\(rating) estrelas ou mais")
                    } else {
                        Text("\(rating) estrelas")
                    }
                }
            }
        }
    }
    
    private func makeDistanceFilterView() -> some View {
        Menu("Distância") {
            Button {
                initialDistance = 0.0
            } label: {
                Text("Limpar filtro")
            }
            
            Divider()
            
            ForEach(Array(stride(from: 0, through: 20, by: 5)), id:\.self) { number in
                Button {
                    initialDistance =  number
                } label: {
                    Text("\(String(format: "%.0f", number)) até \(String(format: "%.0f", number + 5)) km")
                }
            }
        }
    }
}

struct StorelListRatingAndDistanceFilterView_Previews: PreviewProvider {
    static var previews: some View {
        StorelListRatingAndDistanceFilterView(ratingStars: .constant(0), initialDistance: .constant(0.0))
    }
}
