//
//  SecondViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/23.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = UIColor.greenColor()
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 2)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myLabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = "secondView"
        myLabel.textColor = UIColor.whiteColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200)
        self.view.addSubview(myLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}