//
//  HomeFoodImageView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 11/07/23.
//

import SwiftUI

struct HomeFoodImageView: View {
    
    @Binding var isAnimating: Bool
    @Binding var imageOffset: CGSize
        
    var body: some View {
        Image("image")
            .resizable()
            .scaledToFit()
            .shadow(radius: 60)
            .padding(isAnimating ? 0 : 92)
            .opacity(isAnimating ? 1 : 0)
            .offset(x: imageOffset.width, y: imageOffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        withAnimation(.easeInOut(duration: 0.5)) {
                            imageOffset = gesture.translation
                        }
                    })
                    .onEnded({ _ in
                        withAnimation(.easeInOut(duration: 0.5)) {
                            imageOffset = .zero
                        }
                    })
            )
    }
}

struct HomeFoodImageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFoodImageView(isAnimating: .constant(true), imageOffset: .constant(.zero))
    }
}
