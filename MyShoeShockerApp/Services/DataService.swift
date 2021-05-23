//
//  DataService.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    let shoes: [Shoe] = [
    Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe01"),
        Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe02"),
        Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe03"),
        Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe04")
    ]
    
    func getShoes() -> [Shoe] {
        return shoes
    }
}
