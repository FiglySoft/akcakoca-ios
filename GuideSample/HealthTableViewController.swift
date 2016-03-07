//
//  HealthTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class HealthTableViewController: UITableViewController {
    
    var healthNameArray = ["Hospital","Pharmacy"]
    var healthImageArray = ["hospital_icon.png","pharmacy_icon.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sağlık"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return healthNameArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HealthCell", forIndexPath: indexPath) as! HealthTableViewCell
        
        cell.healthItemName.text = healthNameArray[indexPath.row]
        cell.healthItemImage.image = UIImage(named: healthImageArray[indexPath.row])
        cell.healthItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            performSegueWithIdentifier("gotoHospital", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 1){
            performSegueWithIdentifier("gotoPharmacy", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }

}
