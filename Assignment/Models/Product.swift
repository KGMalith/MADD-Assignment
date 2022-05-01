//
//  Product.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 5/1/22.
//

import UIKit

struct Product{
    
    var productName:String
    var productCode:String
    var noOfItems:Int
    var productPrice:String
    var priceWithGST:String
    var productDescription:String
    
}


let productArray:[Product] = [
    Product(productName: "Jeans", productCode: "P122", noOfItems: 15, productPrice: "1500", priceWithGST: "11.5", productDescription: "Jeans"),
    Product(productName: "Long Sleeve", productCode: "P153", noOfItems: 10, productPrice: "1000", priceWithGST: "10.5", productDescription: "Long Sleeve"),
    Product(productName: "Linen Dress", productCode: "P104", noOfItems: 20, productPrice: "750", priceWithGST: "2", productDescription: "Linen Dress"),
    Product(productName: "Weaving Saree", productCode: "P566", noOfItems: 12, productPrice: "1800", priceWithGST: "12", productDescription: "Weaving Saree"),
    Product(productName: "Shoes", productCode: "P525", noOfItems: 12, productPrice: "1800", priceWithGST: "12", productDescription: "Shoes")
]
