//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 09/07/23.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var numItens = 1
    
    var body: some View {
        VStack(spacing: 10){
            Text("Quantidade")
            
            HStack {
                makeQuantityButton(
                    action: subtractItem,
                    imageName: "minus.circle.fill"
                )
                
                Text("\(numItens)")
                
                makeQuantityButton(
                    action: addItem,
                    imageName: "plus.circle.fill"
                )
            }
        }
        .font(.headline)
    }
    
    private func makeQuantityButton(
        action: @escaping () -> Void,
        imageName: String ) -> some View {
            
        Button(action: action) {
            Image(systemName: imageName)
         }
         .foregroundColor(Color("ColorRedDark"))
         .font(.title3)
    }
    
    private func subtractItem() {
        if numItens > 1 {
            numItens -= 1
        }
    }
    
    private func addItem() {
        if numItens < 10 {
            numItens += 1
        }
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView()
    }
}
