//
//  FirstViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/22.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set title
        self.title = "My 1st View"
        // set background color
        self.view.backgroundColor = UIColor.cyanColor()
        
        // create button
        let myButton = UIButton(frame: CGRectMake(0,0,100,50))
        myButton.backgroundColor = UIColor.orangeColor()
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200)
        myButton.setTitle("ボタン", forState: .Normal)
        
        // add target
        myButton.addTarget(self, action: #selector(self.onClickMyButton(_:)), forControlEvents: .TouchUpInside)
        
        // add to view
        self.view.addSubview(myButton)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    internal func onClickMyButton(sender: UIButton) {
        // create secondViewController
        let secondViewController = SecondViewController()
        
        // set secondViewController to navigationController
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
}