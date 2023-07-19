//
//  StoreProductsListView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 04/07/23.
//

import SwiftUI

struct StoreProductsListView: View {
    
    let store: Store
    @State private var selectedProduct: Product?
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            Text("Produtos")
                .font(.title2)
                .bold()
            
            ForEach(store.products) { product in
                Button {
                    selectedProduct = product
                } label: {
                    StoreProductsItemView(product: product)
                }
            }
            .sheet(item: $selectedProduct) { product in
                ProductDetailView(product: product)
            }
        }
    }
}

struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreProductsListView(store: storeMock[1])
    }
}
