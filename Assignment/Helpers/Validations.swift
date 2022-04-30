//
//  Validations.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import Foundation
import UIKit

class Validation {
   
    public func checkIsEmpty(textFields: UITextField) -> Bool {
      
        guard let text = textFields.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
                    return true
                 }
     
        if (text.isEmpty) {
            
                    return true
            }
        
       return false
    }
    

}
