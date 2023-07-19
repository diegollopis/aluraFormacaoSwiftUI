//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 29/06/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: Store
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 30) {
                StoreDetailHeaderView(store: store)
                StoreProductsListView(store: store)
                    .padding(.horizontal, 12)
            }
            .navigationTitle(store.name)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundColor(Color("ColorRed"))
                    }

                }
            }
        }
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView(store: storeMock[2])
    }
}
