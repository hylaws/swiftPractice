//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

// add UITextFieldDelegate
class ViewController: UIViewController,UITextFieldDelegate {

    //define UITextField
    private var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // create UITextField
        myTextField = UITextField(frame: CGRectMake(0,0,200,30))
        
        //insert text
        myTextField.text = "Hello World"
        
        //set delegate 
        myTextField.delegate  = self
        

        //show rounded frame
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        //set position
        myTextField.layer.position = CGPoint(x: self.view.frame.width/2, y: 100)

        
        //add to view
        self.view.addSubview(myTextField)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        //Use that method to allow or prevent the editing of the text field’s contents.
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        //posts a UITextFieldTextDidBeginEditingNotification notification.
        
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        //Use that method to validate the current text
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //posts a UITextFieldTextDidEndEditingNotification notification.
        
    }
    


}

