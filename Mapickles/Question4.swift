//
//  Question4.swift
//  Mapickles
//
//  Created by motoshi on 2015/02/10.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class Question4: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    @IBOutlet weak var rightChoice: UIButton!
    @IBOutlet weak var leftChoice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func selectedRight(sender: AnyObject) {
        appDelegate.answer.append(rightChoice.currentTitle!)
    }
    
    @IBAction func selectedLeft(sender: AnyObject) {
        appDelegate.answer.append(leftChoice.currentTitle!)
    }
}
