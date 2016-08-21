//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // allow alert
        let setting = UIUserNotificationSettings(forTypes: [.Sound, .Alert], categories: nil)
        // Registers your preferred options for notifying the user.
        UIApplication.sharedApplication().registerUserNotificationSettings(setting)
        
        // create myNotificationButton
        let myNotificationButton: UIButton = UIButton(frame: CGRectMake(0,0,200,80))
        myNotificationButton.backgroundColor = UIColor.orangeColor()
        myNotificationButton.layer.masksToBounds = true
        myNotificationButton.setTitle("Notification", forState: .Normal)
        myNotificationButton.layer.cornerRadius = 20.0
        myNotificationButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:200)
        myNotificationButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        myNotificationButton.tag  = 1
        
        // add myNotificationButton to view
        view.addSubview(myNotificationButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton")
        if sender.tag == 1 {
            showNotification()
        }
    }
    
    private func showNotification() {
        print("showNotification")
        // create UILocalNotification
        let myNotification: UILocalNotification = UILocalNotification()
        // set text
        myNotification.alertBody = "TEST"
        // set timezone
        myNotification.timeZone = NSTimeZone.defaultTimeZone()
        // alert show after 10 sec
        myNotification.fireDate = NSDate(timeIntervalSinceNow: 10)
        // set localNotification
        UIApplication.sharedApplication().scheduleLocalNotification(myNotification)
    }


}

