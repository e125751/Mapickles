//
//  question1.swift
//  unwindToTop
//
//  Created by motoshi on 2015/02/08.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class Question1: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func firstSelect(sender: AnyObject) {
        appDelegate.answer.append("First")
    }
    @IBAction func Foot(sender: AnyObject) {
        appDelegate.judge.append("Foot")
    }
    
   
    @IBAction func secondSelect(sender: AnyObject) {
        appDelegate.answer.append("Second")
    }
    @IBAction func car(sender: AnyObject) {
        appDelegate.judge.append("car")
    }
}
