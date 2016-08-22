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
        
        // create myButton
        let myButton: UIButton = UIButton()
        // set size
        myButton.frame = CGRectMake(0, 0, 200, 40)
        // set background color
        myButton.backgroundColor = UIColor.cyanColor()
        // set corner radius
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20
        // set position
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y: 200)
        // set button text
        myButton.setTitle("UIAlert実行", forState: .Normal)
        // set color of text
        myButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        // set button action
        myButton.addTarget(self, action: #selector(self.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        
        // add to view
        self.view.addSubview(myButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func onClickMyButton(sender: UIButton) {
        // create UIAlertController
        let myAlert: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .Alert)
        
        // create UIAlertAction
        let myOkAction = UIAlertAction(title: "OK", style: .Default, handler: {
            
            (action:UIAlertAction!) -> Void in
                print("tap myOkAction")
        })
        // set action to myAlert
        myAlert.addAction(myOkAction)
        // set myALert as presentViewController
        presentViewController(myAlert, animated: true, completion: nil)
        
    }


}

