//
//  HomeBackgroundView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 11/07/23.
//

import SwiftUI

struct HomeBackgroundView: View {
    
    @Binding var isAnimating: Bool
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                makeCircle()
                    .position(x: isAnimating ? 30 : -30,
                          y: isAnimating ? 30 : -30)
                
                makeCircle()
                    .position(x: isAnimating
                              ? geometry.size.width - 30
                              : geometry.size.width + 30,
                              
                              y: isAnimating
                              ? geometry.size.height - 30
                              : geometry.size.height  + 30
                    )
            }
        }
    }
    
    private func makeCircle() -> some View {
        Circle()
            .foregroundColor(Color("ColorRed"))
            .frame(width: isAnimating ? 250 : 0)
            .blur(radius: 80)
            .opacity(isAnimating ? 0.5 : 0)
    }
}

struct HomeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBackgroundView(isAnimating: .constant(true))
    }
}
