//
//  ProductDetailAddToCartButtonView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 09/07/23.
//

import SwiftUI

struct ProductDetailAddToCartButtonView: View {
    var body: some View {
        
        Button {
            //
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding()
            .padding(.horizontal, 30)
            .font(.system(size: 18))
            .bold()
        }
        .background(Color("ColorRedDark"))
        .foregroundColor(.white)
        .cornerRadius(25)
        .shadow(color: Color("ColorRedDark"), radius: 8, x: 4, y: 2)
    }
}

struct ProductDetailAddToCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailAddToCartButtonView()
    }
}
