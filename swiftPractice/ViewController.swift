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
        // create rect
        let myRect = CGRectMake(0, 0, 200, 50)
        //create label
        let myLabel: UILabel = UILabel(frame: myRect)
        //change color
        myLabel.backgroundColor = UIColor.cyanColor()
        
        // add mask for changing corner radius
        myLabel.layer.masksToBounds = true
        
        // change corner radius
        myLabel.layer.cornerRadius = 20
        
        // insert text to label
        myLabel.text = "hello, world"
        
        // change text color
        myLabel.textColor = UIColor.whiteColor()
        
        // add text shadow
        myLabel.shadowColor = UIColor.grayColor()
        
        // centering text
        myLabel.textAlignment = NSTextAlignment.Center
        
        // set position to horizontal center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width / 2, y: 200)
        
        // set background color of view
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        //add to view
        self.view.addSubview(myLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

