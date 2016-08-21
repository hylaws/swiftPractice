//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

// add UIWebViewDelegate
class ViewController: UIViewController, UIWebViewDelegate {

    // define myWebView
    private var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // get statusBar height
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        // get frame height
        let displayHeight: CGFloat = self.view.frame.height
        // get frame width
        let displayWidth: CGFloat = self.view.frame.width
        // create myWebView
        myWebView = UIWebView()
        
        // set delegate
        myWebView.delegate = self
        
        // set WebView size and position
        myWebView.frame = CGRectMake(0, barHeight, displayWidth, displayHeight - barHeight)


        
        // create url
        let url: NSURL = NSURL(string: "http://www.apple.com")!
        
        // make request
        let request: NSURLRequest = NSURLRequest(URL: url)
        
        // set request to myWebView
        myWebView.loadRequest(request)
        
        // add myWebView to view
        self.view.addSubview(myWebView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidFinishLoad(webView: UIWebView) {
        print("webViewDidFinishLoad")
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("webViewDidStartLoad")
    }


}

