//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 10/07/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    @State private var showSecondScreen = false
    @State private var imageOffset: CGSize = .zero
    @State private var buttonOffset: CGSize = .zero
    
    var body: some View {
        ZStack {
            HomeBackgroundView(isAnimating: $isAnimating)
            
            VStack {
                HomeTitleAndSubtitleView(isAnimating: $isAnimating)
                
                HomeFoodImageView(
                    isAnimating: $isAnimating,
                    imageOffset: $imageOffset)
                            
                HomeFindMoreButtonView(isAnimating: $isAnimating,
                                       showSecondScreen: $showSecondScreen,
                                       buttonOffset: $buttonOffset)
            }
            .padding()
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                isAnimating = true
            }
        }
        .fullScreenCover(isPresented: $showSecondScreen) {
            ContentView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
