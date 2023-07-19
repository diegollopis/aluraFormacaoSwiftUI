//
//  Store.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 03/07/23.
//

import Foundation

struct Store: Identifiable {
    let id = UUID()
    let logo: String
    let name: String
    let imageHeader: String
    let address: Address
    let stars: Int
    let distance: Double
    let products: [Product]
    
    var distanceFormated: String {
        distance.formatDistance()
    }
}

struct Address {
    let street: String
    let city: String
    let state: String
    
    var addressFormated: String {
        "\(street), \(city), \(state)"
    }
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: String
    let price: Double
    let image: String
    
    var priceFormated: String {
        "R$ \(price.formatToPrice())"
    }
}
