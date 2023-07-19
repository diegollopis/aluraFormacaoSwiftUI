//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 09/07/23.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 30)
                .padding(.horizontal, -10)
            
            Text(product.name)
                .font(.title)
                .bold()
            
            Text(product.ingredients)
            
            Text(product.priceFormated)
                .font(.headline)
        }
        .padding(.horizontal, 10)
    }
}

struct ProductDetailView_Views_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailHeaderView(product: storeMock[0].products[0])
    }
}
