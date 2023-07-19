//
//  BannerView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import SwiftUI

struct CarouselItemView: View {
    
    let banner: BannerType
    
    var body: some View {
        Image(banner.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(banner: .init(
            id: 1,
            image: "brazilian-meal-banner"
        ))
    }
}
