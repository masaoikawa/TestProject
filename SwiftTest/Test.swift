//
//  Test.swift
//  SwiftTest
//
//  Created by 井川　雅央 on 2014/07/10.
//  Copyright (c) 2014年 MASAO IKAWA. All rights reserved.
//

import Foundation

class AxData {
    
    var group:String=""
    var title:String=""
    
    init(Group:String, Title:String) {
        self.group = Group
        self.title = Title
    }
    
    
}

@infix func == (left: AxData, right: AxData) -> Bool {
    return (left.title == right.title)
}
@infix func < (left: AxData, right: AxData) -> Bool {
    return (left.title < right.title)
}

@infix func > (left: AxData, right: AxData) -> Bool {
    return (left.title > right.title)
}

var aData = AxData(Group: "IKAWA",Title: "MASAO")

