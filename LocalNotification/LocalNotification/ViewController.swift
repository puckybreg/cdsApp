//
//  ViewController.swift
//  LocalNotification
//
//  Created by Jay Messina on 1/10/17.
//  Copyright © 2017 Jay Messina. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func action(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Fourth Meal"
        //content.subtitle = "Sad News"
        content.body = "No Fourth Meal during Winter Term :("
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
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            //if didAllow, ...
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

