//
//  ViewController.swift
//  4thMealApp
//
//  Created by Jay Messina on 1/6/17.
//  Copyright © 2017 Jay Messina. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func action(_ sender: Any) {
        let Title = "Fourth Meal"
        let content = UNMutableNotificationContent()
        content.title = Title

        let date = Date()
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        
        if weekday == 0{
            content.body = "Fourth meal tonight is Breakfast Night"
        }
        else if weekday == 1{
            content.body = "Fourth meal tonight is Nacho Night and the dessert is Brownie Bar"
        }
        else if weekday == 2{
            content.body = "Fourth meal tonight is Corn Dogs and the dessert is Warm Seasonal Dumplings"
        }
        else if weekday == 3{
            content.body = "Fourth meal tonight is Chicken Tenders and the dessert is Cupcake Bar"
        }
        else if weekday == 4{
            content.body = "Fourth meal tonight is Pasta Night and the dessert is Seasonal Fruit Crisp "
        }
        else if weekday == 5{
            content.body = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else if weekday == 6{
            content.body = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else{
            content.body = "No Fourth Meal"
        }
                //content.subtitle = "Sad News"
        //content.body = Body
        content.badge = 1 //display icon badge in notification
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats:false)
        
        //request to display
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        //handles job of diplaying notification
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = Date()
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        
        if weekday == 0{
            label.text = "Fourth meal tonight is Breakfast Night"
        }
        else if weekday == 1{
            label.text = "Fourth meal tonight is Nacho Night and the dessert is Brownie Bar"
        }
        else if weekday == 2{
            label.text = "Fourth meal tonight is Corn Dogs and the dessert is Warm Seasonal Dumplings"
        }
        else if weekday == 3{
            label.text = "Fourth meal tonight is Chicken Tenders and the dessert is Cupcake Bar"
        }
        else if weekday == 4{
            label.text = "Fourth meal tonight is Pasta Night and the dessert is Seasonal Fruit Crisp "
        }
        else if weekday == 5{
            label.text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else if weekday == 6{
            label.text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else{
            label.text = "No Fourth Meal"
        }
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            //if didAllow, ...
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

