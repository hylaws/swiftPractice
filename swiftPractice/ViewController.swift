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
        // set image
        let myImage: UIImage = UIImage(named: "sample")!
        
        //create UIImageView
        let imageViewSize = self.view.frame.width / 2
        
        // create image view
        let myDefaultView: UIImageView = UIImageView(frame: CGRectMake(0, 0, imageViewSize, imageViewSize))
        
        // set image
        myDefaultView.image = myImage
        
        // set content mode with scale aspect fit
        myDefaultView.contentMode = UIViewContentMode.ScaleAspectFit
        
        // set border color
        myDefaultView.layer.borderColor = UIColor.blackColor().CGColor
        myDefaultView.layer.borderWidth = 1
        
        // add to view
        self.view.addSubview(myDefaultView)
        
        let mySmallView: UIImageView = UIImageView(frame: CGRectMake(imageViewSize, 0, imageViewSize, imageViewSize))
        mySmallView.image = myImage
        mySmallView.contentMode = UIViewContentMode.ScaleAspectFit
        
        // scale down with affine transform
        mySmallView.transform = CGAffineTransformMakeScale(0.5, 0.5)
        mySmallView.layer.borderColor = UIColor.blackColor().CGColor
        mySmallView.layer.borderWidth = 1
        self.view.addSubview(mySmallView)
        
        let myLargeView: UIImageView = UIImageView(frame: CGRectMake(0, imageViewSize, imageViewSize, imageViewSize))
        myLargeView.image = myImage
        myLargeView.contentMode = UIViewContentMode.ScaleAspectFit
        // scale up with affine transform
        myLargeView.transform = CGAffineTransformMakeScale(1.5, 1.5)
        myLargeView.layer.borderColor = UIColor.blackColor().CGColor
        myLargeView.layer.borderWidth = 1
        self.view.addSubview(myLargeView)
        
        let angle:CGFloat = CGFloat(-30.0 / 180.0 * M_PI)
        let myRotateView: UIImageView = UIImageView(frame: CGRectMake(imageViewSize, imageViewSize, imageViewSize, imageViewSize))
        myRotateView.image = myImage
        
        // rotate with affine transform
        myRotateView.transform = CGAffineTransformMakeRotation(angle)
        myRotateView.contentMode = UIViewContentMode.ScaleAspectFit
        myRotateView.layer.borderColor = UIColor.blackColor().CGColor
        myRotateView.layer.borderWidth = 1
        self.view.addSubview(myRotateView)
        
        let myReverseView: UIImageView = UIImageView(frame: CGRectMake(0, imageViewSize * 2, imageViewSize, imageViewSize))
        myReverseView.image = myImage
        myReverseView.contentMode = UIViewContentMode.ScaleAspectFit
        
        // reverse with affine transform
        myReverseView.transform = CGAffineTransformScale(myReverseView.transform, -1.0, 1.0)
        myReverseView.layer.borderColor = UIColor.blackColor().CGColor
        myReverseView.layer.borderWidth = 1
        self.view.addSubview(myReverseView)
        
        print (self.view.bounds.width)
        print (self.view.bounds.height)
        print (myImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

