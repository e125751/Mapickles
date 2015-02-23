//
//  ShowDetailController.swift
//  Mapickles
//
//  Created by motoshi on 2015/02/10.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ShowDetailController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = appDelegate.jstring
        myLabel.textColor = UIColor.whiteColor()
        myLabel.shadowColor = UIColor.grayColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        self.view.addSubview(myLabel)
        
        let url = NSURL(string: appDelegate.jphoto)
        var err: NSError?
        var imgData: NSData = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)!
        var img = UIImage(data: imgData)
        
        let iv: UIImageView = UIImageView(image: img)
        iv.frame = CGRectMake(0, 0, 120, 120)
        self.view.addSubview(iv)
        
        iv.layer.position = CGPoint(x: self.view.bounds.width/2, y: 250.0)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
