//
//  ViewController.swift
//  FoodTracker
//
//  Created by docglass on 12/10/16.
//  Copyright © 2016 Winter Term Practicum. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameRealLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hides the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameRealLabel.text = textField.text
    }

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {

        mealNameRealLabel.text = "Default Text"
        //mealNameRealLabel.font = UIFont(name: "HelveticaNeue", size: 8.0)
    }
}


