//
//  ViewController.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!

    var selectedShoe: Shoe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
    }

    @IBAction func cartPressed(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: K.SegueIdentifiers.toCartVC, sender: self)
    }
    

}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return DataService.instance.getShoes().count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainShoeCell", for: indexPath) as? MainShoeCell {
            let shoe = DataService.instance.getShoes()[indexPath.row]
            cell.updateViews(shoe: shoe)
            return cell
        } else {
            return MainShoeCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 257
        let height: CGFloat = 366
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        mainCollectionView.deselectItem(at: indexPath, animated: false)
        selectedShoe = DataService.instance.getShoes()[indexPath.row]
        self.performSegue(withIdentifier: K.SegueIdentifiers.toDetailVC, sender: indexPath)
        
    }
 
}

