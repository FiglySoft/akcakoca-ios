//
//  ResortsTableViewController.swift
//  Akçakoca Rehberi
//
//  Created by Servet Can Asutay on 11/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class ResortsTableViewController: UITableViewController {
    
    var resortNameArray = ["Al-Sa Tatil Köyü"]
    
    var resortPhoneArray = ["03806286444"]
    
    var resortAddressArray = ["Mücavir Melenağzı Köyü 2 Sokak No: 130"]
    
    var resortMailArray = ["-"]
    
    var resortWebArray = ["http://www.alsatatilkoyu.com/"]
    
    var resortCoordinatesArray = ["41.071827,30.999377"]
    
    var resortImageArray = ["alsatatilkoyu.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tatil Köyleri"
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
        return resortNameArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ResortCell", forIndexPath: indexPath) as! ResortsTableViewCell

        cell.resortItemName.text = resortNameArray[indexPath.row]
        cell.resortItemPhone.text = resortPhoneArray[indexPath.row]
        cell.resortItemImage.image = UIImage(named: resortImageArray[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = resortNameArray[indexPath.row]
        viewController.detailAddressStr = resortAddressArray[indexPath.row]
        viewController.detailPhoneStr = resortPhoneArray[indexPath.row]
        viewController.detailMailStr = resortMailArray[indexPath.row]
        viewController.detailWebStr = resortWebArray[indexPath.row]
        viewController.detailImageStr = resortImageArray[indexPath.row]
        viewController.detailCoordinatesStr = resortCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
