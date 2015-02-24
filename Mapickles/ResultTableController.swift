//
//  ResultTableController.swift
//  Mapickles
//
//  Created by motoshi on 2015/02/10.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit


class ResultTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    let jjson = JSON.fromURL("http://133.13.56.126:8080/901-2212_f.json")
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        let myTableView: UITableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        
        appDelegate.jjson = JSON.fromURL("http://133.13.56.126:8080/901-2212_f.json")
        
        // select result
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Num: \(indexPath.row)")
        
        let showDetailController = ShowDetailController()
        appDelegate.jstring = jjson[indexPath.row]["name"].asString!
        appDelegate.jphoto = jjson[indexPath.row]["photo"].asString!
        self.navigationController?.pushViewController(showDetailController, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.answer.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.text = "\(appDelegate.answer[indexPath.row])"
        
        return cell
    }
    
    
    
}
