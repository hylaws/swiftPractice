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
        
        // set background color
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // create UITextView
        let myTextView: UITextView = UITextView(frame: CGRectMake(10, 50, self.view.frame.width - 20, 500))
        
        //set text
        myTextView.text = "hogehoge \n fugafuga \n 09000001111 \n http://example.com \n "
        //set background color
        myTextView.backgroundColor = UIColor.grayColor()
        
        //set corner radius
        myTextView.layer.masksToBounds = true
        myTextView.layer.cornerRadius = 20.0
        
        //set border
        myTextView.layer.borderColor = UIColor.blackColor().CGColor
        myTextView.layer.borderWidth = 1
        
        //set fonts
        myTextView.font = UIFont.systemFontOfSize(CGFloat(20))
        myTextView.textColor = UIColor.blackColor()
        myTextView.textAlignment = NSTextAlignment.Left
        
        
        //automatically convert link, date etc.
        myTextView.dataDetectorTypes = UIDataDetectorTypes.All
        
        //set shadow
        myTextView.layer.shadowOpacity = 0.5
        
        //disable edit text
        myTextView.editable = false
        
        //add to view
        self.view.addSubview(myTextView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

