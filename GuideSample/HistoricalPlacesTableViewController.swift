//
//  HistoricalPlacesTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class HistoricalPlacesTableViewController: UITableViewController {
    
    var historicalPlaceNameArray = ["Hemşin Camii","Orhan Gazi Camii"]
    
    var historicalPlaceImageArray = ["hemsin.jpg","orhangazi.jpg"]
    
    var historicalPlacePhoneArray = ["-", "-"]
    
    var historicalPlaceAddressArray = ["Hemşin Köyü", "Çayağzı Köyü"]
    
    var historicalPlaceCoordinatesArray = ["41.025481,31.023792", "-"]
    
    var historicalPlaceMailArray = ["-", "-"]
    
    var historicalPlaceWebArray = ["-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tarihi Mekanlar"
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
        return historicalPlaceNameArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HistoricalCell", forIndexPath: indexPath) as! HistoricalPlacesTableViewCell

        cell.historicalPlaceItemName.text = historicalPlaceNameArray[indexPath.row]
        cell.historicalPlaceItemImage.image = UIImage(named: historicalPlaceImageArray[indexPath.row])
        cell.historicalPlaceItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = historicalPlaceNameArray[indexPath.row]
        viewController.detailAddressStr = historicalPlaceAddressArray[indexPath.row]
        viewController.detailPhoneStr = historicalPlacePhoneArray[indexPath.row]
        viewController.detailMailStr = historicalPlaceMailArray[indexPath.row]
        viewController.detailWebStr = historicalPlaceWebArray[indexPath.row]
        viewController.detailImageStr = historicalPlaceImageArray[indexPath.row]
        viewController.detailCoordinatesStr = historicalPlaceCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
