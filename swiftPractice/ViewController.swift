//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myLeftButton: UIBarButtonItem!
    private var myRightButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        self.title = "My navigation"
        
        myLeftButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(self.onClickMyButton(_:)))
        
        myRightButton = UIBarButtonItem(title: "RightButton", style: .Plain, target: self, action: #selector(self.onClickMyButton(_:)))
        
        myLeftButton.tag = 1
        myRightButton.tag = 2
        
        self.navigationItem.leftBarButtonItem = myLeftButton
        self.navigationItem.rightBarButtonItem = myRightButton
        
        
        
    }
    
    internal func onClickMyButton(sender: UIButton) {
        switch(sender.tag) {
        case 1:
            self.view.backgroundColor = UIColor.blueColor()
        case 2:
            self.view.backgroundColor = UIColor.redColor()
        default:
            print("error")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

