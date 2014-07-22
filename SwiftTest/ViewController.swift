//
//  ViewController.swift
//  SwiftTest
//
//  Created by 井川　雅央 on 2014/06/14.
//  Copyright (c) 2014年 MASAO IKAWA. All rights reserved.
//

import UIKit

class ViewController: UITableViewController,UITableViewDataSource,UITableViewDelegate {
    
    var titles = [
        "Group 1","GROUP 2","GROUP 3"
    ]
    
    var connections = [
        [["Title1","ikawa"],["Tile2","masao"]],
        [["タイトル1","まさお"],["タイトル2","いかわ"]],
        [["TITLE1","MASAOIKA"],["TITLE2","井川雅央"],["TITLE3","Ikawa Masao"]]
    ]
    
    func addGroup(groupName:String) {
        titles.append(groupName)
    }
    func AddData(Section:Int,Title:String,Detail:String){
        connections[Section].append([Title,Detail])
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return connections[section].count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return titles.count
    }
    
    override func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return titles[section]
    }

    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!  {
        let reuseIdentifier = "cell"
        var cell:UITableViewCell? = tableView?.dequeueReusableCellWithIdentifier(reuseIdentifier) as? UITableViewCell
        if !cell
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                reuseIdentifier: reuseIdentifier)
        }
    
        
        cell!.textLabel.text = connections[indexPath.section][indexPath.row][0]
        
        cell!.detailTextLabel.text = connections[indexPath.section][indexPath.row][1]
        
        return cell
    }
}
