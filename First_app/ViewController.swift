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
    @IBOutlet var Disaplay_label: UILabel!

    @IBOutlet var Input_field: UITextField!
    
    @IBAction func Input_enter(sender: UITextField) {
        Disaplay_label.text = sender.text
        sender.text = nil
    }
    
    @IBAction func Enter(sender: UIButton) {
        Disaplay_label.text = Input_field.text
        Input_field.text = nil
    }
    @IBAction func Clean_B(sender: UIButton) {
        Input_field.text = nil
    }
    
    /*functions*/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

