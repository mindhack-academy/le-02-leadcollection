//
//  FormVCViewController.swift
//  LeadCollection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import UIKit

class FormVC: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var technologySegmentedControl: UISegmentedControl!
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var dateDataPicker: UIDatePicker!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
        let user: User = User()
        user.firstName = nameTextField.text
        user.lastName = nameTextField.text
        user.email = emailTextField.text
        user.phone = phoneTextField.text
        
        print("----- USER -----")
        print(user)
        
        let formData: FormData = FormData()
        formData.user = user
        formData.technology = technologySegmentedControl.selectedSegmentIndex
        formData.reason = reasonTextView.text
        formData.contactDate = dateDataPicker.date
        
        print("----- FORM DATA -----")
        print(formData)
        
        // add to StorageManager
        StorageManager.shared.addData(formData: formData)
        // print StorageManager data
        print(StorageManager.shared.getData())
        //reset form
        resetform()
    }
    
    @IBAction func resetBtnWasPressed(_ sender: Any) {
        resetform()
    }
    
    func resetform() {
        self.nameTextField.text = ""
        self.emailTextField.text = ""
        self.phoneTextField.text = ""
        self.dateDataPicker.date = Date()
        self.technologySegmentedControl.selectedSegmentIndex = 0
        
        self.nameTextField.becomeFirstResponder()
    }
    
    
}
