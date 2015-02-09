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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
