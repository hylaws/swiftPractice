//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // define buttons
    private var myInfoDarkButton: UIButton!
    private var myInfoLightButton: UIButton!
    private var myAddButton: UIButton!
    private var myDetailButton: UIButton!
    private var mySystemButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //create buttons
        myInfoDarkButton = UIButton(type: UIButtonType.InfoDark)
        myInfoLightButton = UIButton(type: UIButtonType.InfoLight)
        myAddButton = UIButton(type: UIButtonType.ContactAdd)
        myDetailButton = UIButton(type: UIButtonType.DetailDisclosure)
        mySystemButton = UIButton(type: UIButtonType.System)
        //Note: DetailDisclosure, InfoLight, InfoDark are same icons from ios7
        
        //set positions
        myInfoDarkButton.layer.position = CGPoint(x: self.view.frame.width / 2, y: 50)
        myInfoLightButton.layer.position = CGPoint(x: self.view.frame.width / 2, y: 100)
        myAddButton.layer.position = CGPoint(x: self.view.frame.width / 2, y: 150)
        myDetailButton.layer.position = CGPoint(x: self.view.frame.width / 2, y: 200)
        
        // add frame to mySystemButton
        mySystemButton.frame = CGRectMake(0, 0, 200, 50)
        mySystemButton.layer.position = CGPoint(x: self.view.frame.width / 2, y: 250)
        
        //add titile to mySystemButton
        mySystemButton.setTitle("mySystemButton", forState: UIControlState.Normal)
        
        //set tags
        myInfoDarkButton.tag = 1
        myInfoLightButton.tag = 2
        myAddButton.tag = 3
        myDetailButton.tag = 4
        mySystemButton.tag = 5
        
        // add event
        myInfoDarkButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        myInfoLightButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        myAddButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        myDetailButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        mySystemButton.addTarget(self, action: #selector(ViewController.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        
        //add to view
        self.view.addSubview(myInfoDarkButton)
        self.view.addSubview(myInfoLightButton)
        self.view.addSubview(myAddButton)
        self.view.addSubview(myDetailButton)
        self.view.addSubview(mySystemButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* 
     * button event
     */
    internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag \(sender.tag)")
    }
 


}

