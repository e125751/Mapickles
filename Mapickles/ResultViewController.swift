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
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if(appDelegate.answer1 != nil){
            Label.text = appDelegate.answer1
        }else{
            Label.text = "hoge"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}