//
//  Extension.swift
//  assignment03_it18258622
//
//  Created by Malith Dhananjaya on 4/30/22.
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
