//
//  ResultViewController.swift
//  unwindToTop
//
//  Created by motoshi on 2015/02/08.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    // Tableで使用する配列を設定する
    
    let myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Num: \(indexPath.row)")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Cellの.を取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        
        return cell
    }
    
}
