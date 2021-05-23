//
//  MainShoeCell.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class MainShoeCell: UICollectionViewCell {
 
    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    func updateViews(shoe: Shoe) {
        shoeImage.image = UIImage(named: shoe.image)
        brandLabel.text = shoe.brand
        modelLabel.text = shoe.model
        priceLabel.text = shoe.price
    }
}
