//
//  ViewController.swift
//  LeadCollection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorLabel.isHidden = true
        errorLabel.text = "Email sau parola gresite"
        
        print("Primul commit cu Sourcetree")
    }

    @IBAction func loginBtnWasPressed(_ sender: Any) {
        print(emailTextField.text!, passwordTextField.text!)
        
        if emailTextField.text == "email@me.com", passwordTextField.text == "parola" {
            // autentificare valida
            errorLabel.isHidden = true
            
            passwordTextField.text = ""
            emailTextField.text = ""
            
            if let formVC = self.storyboard?.instantiateViewController(withIdentifier: "FormVC") {
                self.present(formVC, animated: true, completion: nil)
            }
            
        } else {
            // autentificare invalida
            errorLabel.isHidden = false
        }
        
        
    }
    
}

