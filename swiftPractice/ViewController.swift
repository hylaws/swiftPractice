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
        
        // create button
        let myButton = UIButton()
        
        //set size
        myButton.frame = CGRectMake(0,0,200,40)
        
        //set background color
        myButton.backgroundColor = UIColor.cyanColor()
        
        //set mask for change radius
        myButton.layer.masksToBounds = true
        
        //change corner radius
        myButton.layer.cornerRadius = 20
        
        //set title (nomal)
        myButton.setTitle("button(nomal)", forState: UIControlState.Normal)
        
        //set title color (nomal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        //set title (highlited)
        myButton.setTitle("button(highlited", forState: UIControlState.Highlighted)
        
        //set title color (hilighted)
        myButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //set position
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        
        //add tag
        myButton.tag = 1
        
        //add event
        //#selector is syntax for swift 2.2
        myButton.addTarget(self, action: #selector(self.onClickMyButton), forControlEvents: .TouchDown)
        
        //add to view
        self.view.addSubview(myButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag:\(sender.tag)")
    }


}

