//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //create scroll view
        myScrollView = UIScrollView()
        
        //set size of ScrollView
        myScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        
        //create image
        let myImage = UIImage(named: "sample")!
        
        //create image view
        let myImageView = UIImageView()
        
        //set image to myImageView
        myImageView.image = myImage
        
        //set myImageView frame
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        
        //set image view to ScrollView
        myScrollView.addSubview(myImageView)
        
        // set content size to ScrollView
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        
        //set ScrollView to view
        self.view.addSubview(myScrollView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

