//
//  ViewController.swift
//  TimeAndDate Access
//
//  Created by Jay Messina on 1/10/17.
//  Copyright © 2017 Jay Messina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = Date()
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        //3 = Tuesday
        //2 = Monday
        //1 = Sunday
        //0 = Saturday
        
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        
        print("\(hour):\(minutes):\(seconds)")
        
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        
        print("\(month).\(day).\(year)")
        print(weekday)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

