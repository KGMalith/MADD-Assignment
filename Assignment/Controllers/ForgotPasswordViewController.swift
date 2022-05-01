//
//  ForgotPasswordViewController.swift
//  Assignment
//
//  Created by Malith Dhananjaya on 4/30/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetPasswordBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickResetPasswordBtn(_ sender: Any) {
        let validation = Validation();
        
        let isEmptyEmail = validation.checkIsEmpty(textFields: emailTextField)
        
        if(isEmptyEmail == true){
            displayAlert(title: "Failed", msg: "Email can not be empty", style: .alert)
            
        }else{
            let ac = UIAlertController.init(title: "Password reset link sent to your inbox", message: "Please login to your mail and click on the reset link to password reset", preferredStyle: .alert)
            
                ac.addAction(UIAlertAction.init(title: "Close",
                                                style: .default, handler: {_ in
                                                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                                                    let resetPasswordViewController = storyBoard.instantiateViewController(withIdentifier: "ResetPasswordView") as! ResetPasswordViewController
                                                    self.navigationController?.pushViewController(resetPasswordViewController, animated: true)
                        
                    }))
            
            self.present(ac, animated: true, completion: nil)        }
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
