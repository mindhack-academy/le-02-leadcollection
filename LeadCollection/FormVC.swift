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
        print(
              nameTextField.text,
              emailTextField.text,
              phoneTextField.text,
//              technologySegmentedControl.selectedSegmentIndex,
              technologySegmentedControl.titleForSegment(at: technologySegmentedControl.selectedSegmentIndex),
            
            
              reasonTextView.text,
              
              dateDataPicker.date)
    }
    
    @IBAction func resetBtnWasPressed(_ sender: Any) {
        
    }
    
    
}
