//
//  HotelsMenuTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 03/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HotelsMenuTableViewController: UITableViewController {
    
    var hotelsMenuNamesArray = ["Oteller","Tatil Köyleri","Pansiyonlar"]
    var hotelsMenuImagesArray = ["hotel_icon.png","resorts_icon.png","hostels_icon.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Oteller"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)

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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hotelsMenuNamesArray.count
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            performSegueWithIdentifier("gotoHotels", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 1){
            performSegueWithIdentifier("gotoResorts", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 2){
            performSegueWithIdentifier("gotoHostels", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("hotelsMenuCell", forIndexPath: indexPath) as! HotelsMenuTableViewCell
        cell.hotelsMenuItemName.text = hotelsMenuNamesArray[indexPath.row]
        cell.hotelsMenuItemImage.image = UIImage(named: hotelsMenuImagesArray[indexPath.row])
        cell.hotelsMenuItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }

}
