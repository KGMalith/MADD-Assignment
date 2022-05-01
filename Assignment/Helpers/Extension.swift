//
//  Extension.swift
//  assignment03_it18154504
//
//  Created by Mac on 5/25/21.
//

import Foundation
import UIKit


extension UIViewController {
    func displayAlert(title : String?, msg : String,
                      style: UIAlertController.Style = .alert) {

        
        let ac = UIAlertController.init(title: title,
                                        message: msg, preferredStyle: style)
        
        
            ac.addAction(UIAlertAction.init(title: "OK",
                style: .default, handler: nil))
        
        
        DispatchQueue.main.async {
            self.present(ac, animated: true, completion: nil)
        }
    }
    
    
    
}
