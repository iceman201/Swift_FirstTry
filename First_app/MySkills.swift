//
//  MySkills.swift
//  First_app
//
//  Created by Liguo Jiao on 17/03/15.
//  Copyright (c) 2015 Liguo Jiao. All rights reserved.
//

import UIKit

class MySkills: UITableViewController {

    let Skills = [
        ("C", "Programming"), ("Python", "Programming"), ("C++","Programming"),
        ("C++", "Programming"), ("C#", "Programming"),("Objective-C", "Programming"),
        ("Swift", "Programming"), ("PHP","Programming")
    ]
    
    let Algorithm = [
        ("Bineary","Algorithm")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false // disaplay the navigation bar
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "background-2"))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        if (section == 0){
            return Skills.count
        }
        else{
            return Algorithm.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // setup the content of each cell
        var cell = UITableViewCell()
        cell.backgroundColor = UIColor.clearColor()
        tableView.tableFooterView = UIView(frame:CGRectZero)
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.shadowColor = UIColor.blackColor()
        

        if (indexPath.section == 0){
            var (eachskill , catagory) = Skills[indexPath.row]
            cell.textLabel?.text = eachskill
        }
        else {
            var (eachAlgorithm, catagory) = Algorithm[indexPath.row]
            cell.textLabel?.text = eachAlgorithm
        }
        return cell
    }
    /*
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var label :
        if (section == 0){
            label.text = "What I can programming"
       }
       else{
            label.text = "What algorithm I knew"
       }
       return
    }*/
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var leb : UILabel = UILabel()
        leb.textColor = UIColor.whiteColor()
        if (section == 0){
            leb.text = "   What I can programming"
            
        }
        else{
            leb.text = "   What algorithm I knew"
        }
        return leb
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
