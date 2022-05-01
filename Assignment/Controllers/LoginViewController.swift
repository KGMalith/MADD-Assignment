//
//  LoginViewController.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    let USERNAME: String = "malith@gmail.com"
    let PASSWORD: String = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onLoginClick(_ sender: Any) {
        let username  = self.usernameTextField.text
        let password = self.passwordTextField.text
        
        let validation = Validation();
        
        let isEmptyPassword = validation.checkIsEmpty(textFields: passwordTextField)
        let isEmptyEmail = validation.checkIsEmpty(textFields: passwordTextField)

        if (isEmptyPassword == true || isEmptyEmail == true) {
            displayAlert(title: "Failed", msg: "Username or Password can not be empty", style: .alert)
        }else{

            if(username == USERNAME && password == PASSWORD){
                
                
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
                
                
                
            } else {

                    displayAlert(title: "Failed", msg: "User Name or Password is Invalid.", style: .alert)            }
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
