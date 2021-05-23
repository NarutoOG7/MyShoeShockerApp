//
//  CartVC.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class CartVC: UIViewController {

    @IBOutlet weak var totalItemsLabel: UILabel!
    @IBOutlet weak var cartTableView: UITableView!
    @IBOutlet weak var totalPriceLabel: UILabel!
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
    @IBAction func purchasePressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.SegueIdentifiers.toReceiptVC, sender: self)
    }
    
}
