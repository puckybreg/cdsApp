//
//  ViewController.swift
//  FoodTracker
//
//  Created by docglass on 12/10/16.
//  Copyright © 2016 Winter Term Practicum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

