//
//  ResultViewController.swift
//  unwindToTop
//
//  Created by motoshi on 2015/02/08.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if(appDelegate.judge[0] == "Foot"){
            appDelegate.jjson = JSON.fromURL("http://133.13.56.126:8080/901-2212.json")
        }
        if(appDelegate.judge[0] == "car"){
            appDelegate.jjson = JSON.fromURL("http://133.13.56.126:8080/gc_food.json")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
