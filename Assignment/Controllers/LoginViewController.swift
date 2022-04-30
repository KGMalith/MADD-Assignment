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
            
            let refreshAlert = UIAlertController(title: "Failed", message: "User Name or Password is Empty.", preferredStyle: UIAlertController.Style.alert)

            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
        }else{

            if(username == USERNAME && password == PASSWORD){
                             
                
                
                if let window = UIApplication.shared.windows.first{

                    let mainSB = UIStoryboard(name: "Main", bundle: nil)

                    if let RootVc = mainSB.instantiateViewController(withIdentifier: "HomeTabBarController") as? HomeTabBarController{


                        let initialViewController = mainSB.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                        let navController = UINavigationController(rootViewController: initialViewController)
                        window.rootViewController = navController

                        window.rootViewController = RootVc
                        window.makeKeyAndVisible()

                    }
                }

            } else {

                let refreshAlert = UIAlertController(title: "Failed", message: "User Name or Password is Invalid.", preferredStyle: UIAlertController.Style.alert)

                refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

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
