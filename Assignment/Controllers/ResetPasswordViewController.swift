//
//  ResetPasswordViewController.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var resetPasswordBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickResetPasswordBtn(_ sender: Any) {
        let validation = Validation();
        
        let isEmptyPassword = validation.checkIsEmpty(textFields: newPasswordTextField)
        let isEmptyConfirmPassword = validation.checkIsEmpty(textFields: confirmPasswordTextField)
        
        if(isEmptyPassword == true || isEmptyConfirmPassword == true){
            displayAlert(title: "Failed", msg: "All Fields are required", style: .alert)
            
        }else{
            if(newPasswordTextField.text != confirmPasswordTextField.text){
                displayAlert(title: "Failed", msg: "Password and Confirm Password Not Matched", style: .alert)
                
            }else{
                let ac = UIAlertController.init(title: "Password Resetted Successfully", message: "Please login with your new credientials.", preferredStyle: .alert)
                
                    ac.addAction(UIAlertAction.init(title: "Go to Login >",
                                                    style: .default, handler: {_ in
                                                        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                                                        let loginViewController = storyBoard.instantiateViewController(withIdentifier: "LoginView") as! LoginViewController
                                                        self.navigationController?.pushViewController(loginViewController, animated: true)
                            
                        }))
                
                self.present(ac, animated: true, completion: nil)            }
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
