//
//  ViewController.swift
//  Test2
//
//  Created by 井川 雅央 on 2015/01/11.
//  Copyright (c) 2015年 井川 雅央. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn1Push(sender: AnyObject) {
        var alert = UIAlertView(title: "Check", message: "どうなの", delegate: self, cancelButtonTitle: "いいえ", otherButtonTitles: "はい","どうなの？")
        alert.show()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        switch (buttonIndex) {
        case 0:
            NSLog("0")
        case 1:
            NSLog("1")
        case 2:
            NSLog("2")
        default:
            NSLog("Default")
        }
    }
}

