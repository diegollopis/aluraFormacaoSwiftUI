//
//  StoreListItemView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import SwiftUI

struct StoreListItemView: View {
    
    let store: Store
    
    var body: some View {
        HStack(spacing: 15) {
            Image(store.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(store.name)
                .font(.system(size: 14))
        }
        .padding(.bottom, 20)
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreListItemView(store: .init(
            logo: "bakery-logo",
            name: "Padaria",
            imageHeader:"",
            address: Address(
                street: "",
                city: "",
                state:""
            ),
            stars: 1,
            distance: 4.0,
            products: [])
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
