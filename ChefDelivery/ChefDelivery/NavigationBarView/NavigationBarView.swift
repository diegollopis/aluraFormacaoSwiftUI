//
//  NavigationBarView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            
            Spacer()
            
            Button("Rua Vergueiro, 3185") {}
                .font(.subheadline)
                .foregroundColor(.black)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button {} label: {
                Image(systemName: "bell.badge")
                    .foregroundColor(.red)
                    .font(.title3)
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
    }
}
