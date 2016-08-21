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
        
        // show default font size
        let myDefaultLabel: UILabel = UILabel()
        myDefaultLabel.font = UIFont.systemFontOfSize(UIFont.systemFontSize())
        myDefaultLabel.text = "デフォルトのフォントサイズ"
        myDefaultLabel.frame = CGRect(x: 25, y: 0, width: 300, height: 150)
        self.view.addSubview(myDefaultLabel)
        
        //show small font size
        let mySmallLabel: UILabel = UILabel()
        mySmallLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        mySmallLabel.text = "小さめのフォントサイズ"
        mySmallLabel.frame = CGRect(x: 25, y: 30, width: 300, height: 150)
        self.view.addSubview(mySmallLabel)
        
        //show UIButton font size
        let myButtonLabel: UILabel = UILabel()
        myButtonLabel.font = UIFont.systemFontOfSize(UIFont.buttonFontSize())
        myButtonLabel.text = "UIButtonのフォントサイズ"
        myButtonLabel.frame = CGRect(x: 25, y: 60, width: 300, height: 150)
        self.view.addSubview(myButtonLabel)
        
        //show custom font size
        let myCustomLabel: UILabel = UILabel()
        myCustomLabel.font = UIFont.systemFontOfSize(CGFloat(20))
        myCustomLabel.text = "Point20のフォントサイズ"
        myCustomLabel.frame = CGRect(x: 25, y: 90, width: 300, height: 150)
        self.view.addSubview(myCustomLabel)
        
        //show italic font
        let myItalicLabel: UILabel = UILabel()
        myItalicLabel.font = UIFont.italicSystemFontOfSize(UIFont.labelFontSize())
        myItalicLabel.text = "Italicフォント"
        myItalicLabel.frame = CGRect(x: 25, y: 120, width: 300, height: 150)
        self.view.addSubview(myItalicLabel)
        
        //show bold font
        let myBoldLabel: UILabel = UILabel()
        myBoldLabel.font = UIFont.boldSystemFontOfSize(UIFont.labelFontSize())
        myBoldLabel.text = "Boldフォント"
        myBoldLabel.frame = CGRect(x: 25, y: 150, width: 300, height: 150)
        self.view.addSubview(myBoldLabel)
        
        // show Alial text
        let myAlialLabel: UILabel = UILabel()
        myAlialLabel.font = UIFont(name:"ArialHebew", size:UIFont.labelFontSize())
        myAlialLabel.text = "ArialHebrew"
        myAlialLabel.frame = CGRect(x: 25, y: 180, width: 300, height: 150)
        self.view.addSubview(myAlialLabel)
               
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

