//
//  ViewController.swift
//  DailyNotification
//
//  Created by Jay Messina on 1/10/17.
//  Copyright © 2017 Jay Messina. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

        @IBAction func action(_ sender: Any) {
        /*
        
        let content = UNMutableNotificationContent()
        content.title = "HI"
        content.badge = 1
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
 
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
 */

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //the commented out version is how swift wants me to do everything
        // with swift 3.0, but I can't get it to work
        /*
        var date = DateComponents()
        date.hour = 18
        date.minute = 44
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        let content = UNMutableNotificationContent()
        content.title = "HI"
        content.badge = 1
         UNCalendarNotificationTrigger
        let request = UNNotificationRequest(identifier: "n", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        */
        
        
        //this works but is the old version of how to do it
        //there is no tutorials/even the api for swift 3.0 notifications wasn't helpful
        //https://developer.apple.com/reference/usernotifications
        
        let calendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        var dateFire=NSDate()
        
        var fireComponents=calendar.components([.month, .day, .hour, .minute], from:NSDate() as Date)
        /*
        if (fireComponents.hour == ) {
            dateFire=dateFire.addingTimeInterval(86400)  // Use tomorrow's date
            
            fireComponents=calendar.components([.month, .day, .hour, .minute], from:NSDate() as Date)
        }
 */
        //9:30pm
        fireComponents.hour = 12
        fireComponents.minute = 44
        
        dateFire = calendar.date(from: fireComponents)! as NSDate
        
        
        let localNotification = UILocalNotification()
        localNotification.fireDate = dateFire as Date
        localNotification.alertBody = "No Fourth Meal Over Winter Term"
        localNotification.repeatInterval = NSCalendar.Unit.day
        
        UIApplication.shared.scheduleLocalNotification(localNotification)
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            //if didAllow, ...
        })
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

