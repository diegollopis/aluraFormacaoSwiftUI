//
//  StoreListView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import SwiftUI

struct StoreListView: View {

    @State private var ratingStars = 0
    @State private var initialDistance = 0.0
    
    var finalDistance: Double {
        initialDistance + 5.0
    }
    
    var storesFilter: [Store] {
        storeMock.filter { store in
            store.stars >= ratingStars && (store.distance >= initialDistance && store.distance <= finalDistance)
        }
    }
        
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Lojas")
                    
                    Spacer()
                    
                    StorelListRatingAndDistanceFilterView(
                        ratingStars: $ratingStars,
                        initialDistance: $initialDistance
                    )
                }
                
                if storesFilter.isEmpty {
                    StoreListEmptyView()
                } else {
                    ForEach(storesFilter) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreListItemView(store: store)
                        }
                    }
                }
            }
            
            Spacer()
        }
        .foregroundColor(.black)
    }
}

struct StoreListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreListView()
    }
}
