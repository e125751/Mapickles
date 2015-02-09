//
//  ResultTableController.swift
//  Mapickles
//
//  Created by motoshi on 2015/02/09.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ResultTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView :UITableView!
    var items: [String] = ["バナナ", "みかん", "りんご", "ブドウ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel!.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("タップ：#\(indexPath.row)行")    
    }
}
