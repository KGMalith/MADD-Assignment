//
//  SignUpViewController.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func onSignupBtnClick(_ sender: Any) {
        let validation = Validation();
        
        let isEmptyPassword = validation.checkIsEmpty(textFields: passwordTextField)
        let isEmptyEmail = validation.checkIsEmpty(textFields: passwordTextField)
        let isEmptyName = validation.checkIsEmpty(textFields: fullNameTextField)
        let isEmptyConfirmPassword = validation.checkIsEmpty(textFields: confirmPasswordTextField)
        
        if(isEmptyPassword == true || isEmptyEmail == true || isEmptyName == true || isEmptyConfirmPassword == true){
            let refreshAlert = UIAlertController(title: "Failed", message: "All Fields Are Required", preferredStyle: UIAlertController.Style.alert)

            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
        }else{
            if(passwordTextField.text != confirmPasswordTextField.text){
                let refreshAlert = UIAlertController(title: "Failed", message: "Password & Confirm Password Not Matched", preferredStyle: UIAlertController.Style.alert)

                refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                
            }else{
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let homeViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                self.navigationController?.pushViewController(homeViewController, animated: true)            }
            
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
