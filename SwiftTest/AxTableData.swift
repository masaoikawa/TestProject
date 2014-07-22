//
//  AxTableData.swift
//  SwiftTest
//
//  Created by 井川　雅央 on 2014/06/23.
//  Copyright (c) 2014年 MASAO IKAWA. All rights reserved.
//

import UIKit

class AxTableData:NSObject {
    
    var section:Int
    var group:String
    var title:String
    
    init() {
        self.section=0
        self.group=""
        self.title=""
        super.init()
        
    }

}


class AxTableDataCollection: NSObject,UITableViewDataSource {
    
    var data: Array<AxTableData>
    
    init(){
        data=Array<AxTableData>()
    }
    
    func addObject(tmpData : AxTableData) {
        
        if ( data[data.count].group == tmpData.group ) {
            tmpData.section = data[data.count].section
        } else {
            tmpData.section = data[data.count].section + 1
        }
        
        data.append(tmpData)
        
    }
    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        return UITableViewCell()
    }
    
}
