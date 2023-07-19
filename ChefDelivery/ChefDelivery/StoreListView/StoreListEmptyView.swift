//
//  StoreListEmptyView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 09/07/23.
//

import SwiftUI

struct StoreListEmptyView: View {
    var body: some View {
        Text("Nenhuma loja encontrada!")
            .padding(.top, 32)
            .frame(maxWidth: .infinity)
            .foregroundColor(Color("ColorRed"))
            .font(.title3)
            .bold()
    }
}

struct StoreListEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        StoreListEmptyView()
    }
}
