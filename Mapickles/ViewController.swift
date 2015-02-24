//
//  ViewController.swift
//  unwindToTop
//
//  Created by motoshi on 2015/02/08.
//  Copyright (c) 2015年 motoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    @IBAction func unwindToTop(segue: UIStoryboardSegue){
        appDelegate.answer = [String]()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
        // 配列をつくって、絵を10枚入れておきます。
        var animationSeq:[UIImage!] = [
            UIImage(named: "anime1.png"),
            UIImage(named: "anime2.png"),
            UIImage(named: "anime3.png"),
            UIImage(named: "anime4.png"),
            UIImage(named: "anime5.png"),
            UIImage(named: "anime6.png"),
            UIImage(named: "anime7.png"),
            UIImage(named: "anime8.png"),
            UIImage(named: "anime9.png"),
            UIImage(named: "anime10.png")
        ]
        
        // アニメーションの設定
        self.anime1.animationImages = animationSeq
        self.anime1.animationDuration = 0.5
        self.anime1.animationRepeatCount = 1
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var anime1: UIImageView!
    
    @IBAction func tapanime(sender: UITapGestureRecognizer) {
        
        if self.anime1.isAnimating() {
            self.anime1.stopAnimating() // アニメが動いてたら止める。
        } else {
            self.anime1.startAnimating() // アニメが止まってたら動かす。
        }
    }
}