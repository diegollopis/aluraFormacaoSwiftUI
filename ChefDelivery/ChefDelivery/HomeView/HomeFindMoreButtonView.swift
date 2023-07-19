//
//  HomeFindMoreButtonView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 11/07/23.
//

import SwiftUI

struct HomeFindMoreButtonView: View {
    
    @Binding var isAnimating: Bool
    @Binding var showSecondScreen: Bool
    @Binding var buttonOffset: CGSize
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                ZStack(alignment: .leading) {
                    makeCapsule(with: Color("ColorRed").opacity(0.1), size: 100)
                    makeCapsule(with: Color("ColorRed").opacity(0.2), size: 90)
                        .padding(.horizontal, 5)
                    makeText(with: "Descubra mais")
                                        
                    Capsule()
                        .fill(Color("ColorRed"))
                        .frame(width: buttonOffset.width + 100, height: 100)
                    
                    ZStack {
                        makeCircle(with: Color("ColorRed"), size: 100)
                        makeCircle(with: Color("ColorRedDark"), size: 80)
                        makeChevronImage()
                    }
                    .offset(x: buttonOffset.width)
                    .gesture(
                        DragGesture()
                            .onChanged({ gesture in
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    if gesture.translation.width > 0 && (gesture.translation.width < (geometry.size.width - 50) - 50) {
                                        buttonOffset = gesture.translation
                                    }
                                }
                            })
                            .onEnded({ _ in
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    if buttonOffset.width > (geometry.size.width / 2) {
                                        showSecondScreen = true
                                    } else {
                                        buttonOffset = .zero
                                    }
                                }
                            })
                    )
                }
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 100)
            }
        }
    }
    
    private func makeCapsule(with color: Color, size: CGFloat) -> some View {
        Capsule()
            .fill(color)
            .frame(height: size)
    }
    
    private func makeText(with text: String) -> some View {
        Text(text)
            .offset(x: 150)
            .foregroundColor(Color("ColorRedDark"))
            .font(.title2)
            .bold()
    }
    
    private func makeCircle(with color: Color, size: CGFloat) -> some View {
        Circle()
            .fill(color)
            .frame(width: size, height: size)
    }
    
    private func makeChevronImage() -> some View {
        Image(systemName: "chevron.right.2")
            .foregroundColor(.white)
            .font(.title2)
            .bold()
    }
}

struct HomeFindMoreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFindMoreButtonView(isAnimating: .constant(true),
                               showSecondScreen: .constant(false),
                               buttonOffset: .constant(.zero))
    }
}
