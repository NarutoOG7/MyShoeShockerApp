//
//  DetailsVC.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var shoeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var shoeDetailsText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addToBagPressed(_ sender: UIButton) {
        // Add Shoe to Cart
    }
}
