//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // define myImageView
    private var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //create UIImageView
        myImageView = UIImageView(frame: CGRectMake(0, 0, self.view.bounds.width, 120))
        
        //set image
        let myImage = UIImage(named: "logo")
        
        //add image to myImageView
        myImageView.image = myImage
        
        //set position of myImageView
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200.0)
        
        //add UIImageView to view
        self.view.addSubview(myImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

