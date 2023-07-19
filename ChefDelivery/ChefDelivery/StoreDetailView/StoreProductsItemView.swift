//
//  StoreProductsItemView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 11/07/23.
//

import SwiftUI

struct StoreProductsItemView: View {
        
    let product: Product
    
    var body: some View {
        HStack(spacing: 4) {
            makeProductInfo(with: product)
            Spacer()
            makeProductImage(with: product)
        }
        .foregroundColor(.black)
        .multilineTextAlignment(.leading)
    }
    
    private func makeProductInfo(with product: Product) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(product.name)
                .bold()
            
            Text(product.ingredients)
                .foregroundColor(.black.opacity(0.5))
                
            Text(product.priceFormated)
        }
    }
    
    private func makeProductImage(with product: Product) -> some View {
        Image(product.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .frame(width: 120, height: 120)
            .shadow(
                color: .black.opacity(0.3),
                radius: 20,
                x: 6,
                y: 8
            )
    }
}

struct StoreProductsItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreProductsItemView(product: storeMock[0].products[0])
    }
}
