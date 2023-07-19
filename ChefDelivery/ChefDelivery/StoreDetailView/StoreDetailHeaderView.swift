//
//  HeaderView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 04/07/23.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    let store: Store
    
    var body: some View {
        VStack(spacing: 20) {
            Image(store.imageHeader)
                .resizable()
                .scaledToFit()
            
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(store.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            .padding(.horizontal, 12)
            
            HStack {
                Text(store.address.addressFormated)
                    .fontWeight(.medium)
                
                Spacer()
                
                HStack {
                    ForEach(0..<store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 14))
                    }
                }
            }
            .padding(.horizontal, 12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailHeaderView(store: storeMock[1])
    }
}
