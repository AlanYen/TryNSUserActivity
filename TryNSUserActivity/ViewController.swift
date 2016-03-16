//
//  ViewController.swift
//  TryNSUserActivity
//
//  Created by AlanYen on 2016/3/16.
//  Copyright © 2016年 17Life. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myActivity: NSUserActivity?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myActivity = NSUserActivity(activityType: "com.17Life.NSUserActivity")
        myActivity.title = "NSUserActivity"
        myActivity.eligibleForSearch = true
        myActivity.keywords = Set(arrayLiteral: "test1", "test2", "test3")
        
        self.userActivity = myActivity
        myActivity.eligibleForHandoff = false
        myActivity.becomeCurrent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

