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

        cartTableView.dataSource = self
        cartTableView.delegate = self
        
        cartTableView.estimatedRowHeight = 150
        cartTableView.rowHeight = UITableView.automaticDimension
        
    }
    
    @IBAction func purchasePressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.SegueIdentifiers.toReceiptVC, sender: self)
    }
    
}

extension CartVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getShoesInCart().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIdentifiers.cartCell) as? CartCell {
            let shoe = DataService.instance.getShoesInCart()[indexPath.row]
            cell.updateViews(shoe: shoe)
            return cell
        } else {
            return CartCell()
        }
    }
    
}
