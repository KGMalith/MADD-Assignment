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
            
            displayAlert(title: "Failed", msg: "All Fields Are Required", style: .alert)
        }else{
            if(passwordTextField.text != confirmPasswordTextField.text){
                
                displayAlert(title: "Failed", msg: "Password & Confirm Password Not Matched", style: .alert)
            }else{
                //let homeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
                        
                
                //view.window?.rootViewController = homeViewController
                //view.window?.makeKeyAndVisible()
                if let window = UIApplication.shared.windows.first{

                    let mainSB = UIStoryboard(name: "Main", bundle: nil)

                   if let RootVc = mainSB.instantiateViewController(withIdentifier: Constants.Storyboard.homeTabBarController) as? HomeTabBarController{


                        let initialViewController = mainSB.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as! HomeViewController
                        let navController = UINavigationController(rootViewController: initialViewController)
                       window.rootViewController = navController

                       window.rootViewController = RootVc
                        window.makeKeyAndVisible()

                   }
                }
                
            }
            
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
