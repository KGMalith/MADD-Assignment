//
//  HomeViewController.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var productsCollectionView: UICollectionView!
    @IBOutlet weak var newProductsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollectionView.dataSource = self
        newProductsCollectionView.dataSource = self
        
    }

}

extension HomeViewController:UICollectionViewDataSource{
    func collectionView(_ productsCollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productArray.count    }
    
    func collectionView(_ productsCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: Constants.Storyboard.productCollectionView, for: indexPath) as! ProductCollectionViewCell
        cell.setup(with: productArray[indexPath.row])
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ productsCollectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
