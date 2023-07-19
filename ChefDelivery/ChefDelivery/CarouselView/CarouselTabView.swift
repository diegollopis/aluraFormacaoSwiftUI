//
//  BannerCollectionView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex: Int = 1
    
    var body: some View {
        
        TabView(selection: $currentIndex) {
            ForEach(bannerMock) { CarouselItemView(banner: $0).tag($0.id) }
        }
        .frame(height: 180)
        .tabViewStyle(.page)
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 1.5)) {
                    if currentIndex > bannerMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
