//
//  ViewController.swift
//  swiftPractice
//
//  Created by Fuminori on 2016/08/21.
//  Copyright © 2016年 HYLAWS. All rights reserved.
//

import UIKit

// add UIPickerViewDelegate, UIPickerViewDataSource
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // UIPickerView
    private var myUIPicker: UIPickerView!
    
    // display values
    private let myValues: NSArray = ["Apple","Orange","Lemon","Banana"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myUIPicker = UIPickerView()
        
        //create picker area
        myUIPicker.frame = CGRectMake(0, 0, self.view.bounds.width, 180.0)
        
        // set delegate
        myUIPicker.delegate = self
        
        //set datasource
        myUIPicker.dataSource = self
        
        //add picker to view
        self.view.addSubview(myUIPicker)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Called by the picker view when it needs the number of components.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    //Called by the picker view when it needs the number of rows for a specified component.
    func pickerView(pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return self.myValues.count
    }
    
    //set display text for picker
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let str = myValues[row] as! String
        return str
    }
    
    //when picker selected
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row:\(row)")
        print("value:\(self.myValues[row])")
    }
    
    


}

