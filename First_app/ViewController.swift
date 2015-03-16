//
//  ViewController.swift
//  First_app
//
//  Created by Liguo Jiao on 15/02/15.
//  Copyright (c) 2015 Liguo Jiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
    Global variable
    */
    var bar_color = UIColor.whiteColor()
    var bar_backGround = UIColor(red: 239/255, green: 49/255, blue: 37/255, alpha: 0)
    /*functions*/
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = bar_color
        self.navigationController?.navigationBar.barTintColor = bar_backGround
        self.navigationController?.navigationBar.tintColor = bar_color
        self.navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

