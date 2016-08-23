//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    private var pageControl: UIPageControl!
    private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = self.view.frame.maxX,
            height = self.view.frame.maxY,
            scrollViewWidth: CGFloat = 80.0,
            scrollViewHeight: CGFloat = 80.0
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        scrollView = UIScrollView(frame: self.view.frame)
        
        let pageSize = 10
        
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        
        scrollView.pagingEnabled = true
        
        scrollView.delegate = self
        
        scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0)
        
        self.view.addSubview(scrollView)
        
        for i in 0 ..< pageSize {
            let myLabel: UILabel = UILabel(frame: CGRectMake(CGFloat(i) * width + width/2 - scrollViewWidth/2, height/2 - scrollViewHeight/2, scrollViewWidth, scrollViewHeight))
            myLabel.backgroundColor = UIColor.blackColor()
            myLabel.textColor = UIColor.whiteColor()
            myLabel.textAlignment = NSTextAlignment.Center
            myLabel.layer.masksToBounds = true
            myLabel.text = "Page\(i)"
            myLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
            myLabel.layer.cornerRadius = 40.0
            
            scrollView.addSubview(myLabel)
        }
        
        pageControl = UIPageControl(frame: CGRectMake(0, self.view.frame.maxY - 100, width, 20))
        
        pageControl.backgroundColor = UIColor.orangeColor()
        
        pageControl.numberOfPages = pageSize
        
        pageControl.currentPage = 0
        pageControl.userInteractionEnabled = false
        
        self.view.addSubview(pageControl)
        
    }
    
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

