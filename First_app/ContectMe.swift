//
//  ContectMe.swift
//  First_app
//
//  Created by Liguo Jiao on 25/03/15.
//  Copyright (c) 2015 Liguo Jiao. All rights reserved.
//

import UIKit
import MessageUI

class ContectMe: UIViewController, MFMailComposeViewControllerDelegate{

    @IBOutlet var Subject: UITextField!
    
    @IBOutlet var Content: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Send_Email(sender: AnyObject) {
        var Message = Content
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        var Me = ["jiaoliguo@yahoo.co.nz"]
        var Subject_text = Subject.text
        
        mc.mailComposeDelegate = self
        mc.setSubject(Subject_text)
        mc.setMessageBody(Content.text, isHTML: false)
        mc.setToRecipients(Me)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }

    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        switch result.value{
        case MFMailComposeResultFailed.value:
            NSLog("Faild: %@",[error.localizedDescription])
        case MFMailComposeResultSaved.value:
            NSLog("Saved")
        case MFMailComposeResultSent.value:
            NSLog("Send")
        case MFMailComposeResultCancelled.value:
            NSLog("Cancelled")
        default:
            break
        }
        self.dismissViewControllerAnimated(false, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
