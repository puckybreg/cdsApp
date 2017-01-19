//
//  ViewController.swift
//  FourthMealApp
//
//  Created by Jay Messina on 1/19/17.
//  Copyright © 2017 Jay Messina. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let Title = "Fourth Meal"
        //let content = UNMutableNotificationContent()
        //content.title = Title
        
        let date = Date()
        let calendar2 = Calendar.current
        var text = "No Fourth Meal"
        
        let weekday = calendar2.component(.weekday, from: date)
        print (weekday)
        if weekday == 1{
            text = "Fourth meal tonight is Breakfast Night"
            label.text = "Fourth meal tonight is Breakfast Night"
        }
        else if weekday == 2{
            text = "Fourth meal tonight is Nacho Night and the dessert is Brownie Bar"
            label.text = "Fourth meal tonight is Nacho Night and the dessert is Brownie Bar"

        }
        else if weekday == 3{
            text = "Fourth meal tonight is Corn Dogs and the dessert is Warm Seasonal Dumplings"
            label.text = "Fourth meal tonight is Corn Dogs and the dessert is Warm Seasonal Dumplings"
        }
        else if weekday == 4{
            text = "Fourth meal tonight is Chicken Tenders and the dessert is Cupcake Bar"
            label.text = "Fourth meal tonight is Chicken Tenders and the dessert is Cupcake Bar"
        }
        else if weekday == 5{
            text = "Fourth meal tonight is Pasta Night and the dessert is Seasonal Fruit Crisp"
            label.text = "Fourth meal tonight is Pasta Night and the dessert is Seasonal Fruit Crisp"
        }
        else if weekday == 6{
            text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
            label.text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else if weekday == 0{
            text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
            label.text = "No fourth meal tonight, but you are probably hungry, so call dominoes: 440-774-3033"
        }
        else{
            text = "No Fourth Meal"
            label.text == "No Fourth Meal"
        }
        // Do any additional setup after loading the view, typically from a nib.
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
        //21, 30
        fireComponents.hour = 13
        fireComponents.minute = 13
        
        
        
        dateFire = calendar.date(from: fireComponents)! as NSDate
        
        
        let localNotification = UILocalNotification()
        localNotification.fireDate = dateFire as Date
        localNotification.alertBody = text
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

