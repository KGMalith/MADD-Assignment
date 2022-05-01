//
//  ProductCollectionViewCell.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 5/1/22.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func setup(with product:Product){
        productName.text = product.productName
        productPrice.text = product.productPrice
    }
}
