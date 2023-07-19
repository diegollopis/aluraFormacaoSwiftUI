//
//  HomeTitleAndSubtitleView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 11/07/23.
//

import SwiftUI

struct HomeTitleAndSubtitleView: View {
    
    @Binding var isAnimating: Bool
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Chef Delivery")
                .font(.system(size: 48))
                .fontWeight(.heavy)
                .foregroundColor(Color("ColorRed"))
                
            Text("Peça as suas comidas favoritas no conforto da sua casa")
                .multilineTextAlignment(.center)
                .font(.title3)
                .fontWeight(.light)
               
        }
        .opacity(isAnimating ? 1 : 0)
        .offset(y: isAnimating ? 0 : -50)
    }
}

struct HomeTitleAndSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTitleAndSubtitleView(isAnimating: .constant(true))
    }
}
