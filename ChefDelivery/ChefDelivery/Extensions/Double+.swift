//
//  Double+.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 04/07/23.
//

import Foundation

extension Double {
    func formatToPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
    
    func formatDistance() -> String {
        return String(format: "%.0f", self)
    }
}
