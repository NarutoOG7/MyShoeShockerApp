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
    
    var shoesInCart: [Shoe] = [
        Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe03"),
        Shoe(brand: "NIKE", model: "Air Force 1", price: "$128.00", image: "BBShoe04")
    ]
    
    func getShoes() -> [Shoe] {
        return shoes
    }
    
    func getShoesInCart() -> [Shoe] {
        return shoesInCart
    }
    
    struct SelectedShoe {
        var shoe: Shoe
        var quantity = 0
    }
    
    
        private var myShoes = [SelectedShoe]()
        func addShoeToCart(shoe: Shoe) {
            let selectedShoe = SelectedShoe(shoe: shoe, quantity: 1)
            myShoes.append(selectedShoe)
        }
        
    
    
}
