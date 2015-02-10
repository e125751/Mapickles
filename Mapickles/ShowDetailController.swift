//
//  ShowDetailController.swift
//  Mapickles
//
//  Created by motoshi on 2015/02/10.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ShowDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        
        myLabel.backgroundColor = UIColor.orangeColor()
        
        myLabel.layer.masksToBounds = true
        
        myLabel.layer.cornerRadius = 20.0
        
        myLabel.text = "Hello Swift!!"
        
        myLabel.textColor = UIColor.whiteColor()
        
        myLabel.shadowColor = UIColor.grayColor()
        
        myLabel.textAlignment = NSTextAlignment.Center
        
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        self.view.addSubview(myLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
