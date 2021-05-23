//
//  CartCell.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class CartCell: UITableViewCell {

    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var shoeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func updateViews(shoe: Shoe) {
        shoeImage.image = UIImage(named: shoe.image)
        shoeLabel.text = shoe.brand + shoe.model
        priceLabel.text = shoe.price
       // quantityLabel.text = shoe.q
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
    }
}
