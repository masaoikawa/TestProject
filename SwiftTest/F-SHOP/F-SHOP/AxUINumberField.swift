//
//  AxUINumberField.swift
//  F-SHOP
//
//  Created by 井川　雅央 on 2014/07/30.
//  Copyright (c) 2014年 MASAO IKAWA. All rights reserved.
//

import UIKit

class AxUINumberField: UITextField {
    
    var inputView : UIView {
        get {
            
            if (!inputAccessoryView) {
                
                var accessFrame:CGRect = CGRectMake(0.0, 0.0, 768.0, 77.0)
                inputAccessoryView = UIView(frame: accessFrame)
                inputAccessoryView.backgroundColor = UIColor.blueColor()
                var compButton:UIButton = UIButton.buttonWithType(.System) as UIButton
                compButton.frame = CGRectMake(313.0, 20.0, 158.0, 37.0)
                compButton.setTitle(NSString:"Word Completions", forState:UIControlStateNormal)
                compButton.setTitleColor(UIColor.blackColor(), forState:UIControlStateNormal)
                compButton.addTarget(self,action:"completeCurrentWord:",forControlEvents:.UIControlEventTouchUpInside)
                inputAccessoryView.addSubview(compButton)
            
            }
        
            return inputAccessoryView
        }
    }

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}
