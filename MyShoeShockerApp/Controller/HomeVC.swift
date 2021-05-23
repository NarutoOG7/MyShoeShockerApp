//
//  ViewController.swift
//  MyShoeShockerApp
//
//  Created by Spencer Belton on 5/22/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
    }


}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
}

