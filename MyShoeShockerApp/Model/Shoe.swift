//
//  Shoe.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import Foundation

struct Shoe {
    private(set) public var brand: String
    private(set) public var model: String
    private(set) public var price: String
    private(set) public var image: String
    
    init(brand: String, model: String, price: String, image: String) {
        self.brand = brand
        self.model = model
        self.price = price
        self.image = image
    }
}
