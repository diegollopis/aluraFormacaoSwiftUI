//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 04/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product

    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView()
            Spacer()
            ProductDetailAddToCartButtonView()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storeMock[1].products[1])
    }
}
