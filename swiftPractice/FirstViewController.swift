//
//  FirstViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/23.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.greenColor()
        
        let myButton: UIButton = UIButton(frame: CGRectMake(0,UIApplication.sharedApplication().statusBarFrame.size.height,120,50))
        myButton.backgroundColor = UIColor.grayColor()
        myButton.setTitle("Next", forState: .Normal)
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height - 50)
        
        myButton.addTarget(self, action: #selector(self.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButton)
        
    }
    
    internal func onClickMyButton(sender: UIButton) {
        let mySecondViewController: SecondViewController = SecondViewController()
        // set modal toransition style
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // set present view controller
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


