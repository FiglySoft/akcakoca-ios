//
//  HospitalTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 07/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HospitalTableViewController: UITableViewController {
    
    var hospitalNameArray = ["Akçakoca Devlet Hastanesi", "1 Nolu Sağlık Ocağı", "2 Nolu Sağlık Ocağı"]
    
    var hospitalImageArray = ["akcakoca_hospital.jpg", "akcakoca_first_health.jpg", "akcakoca_second_health.jpg"]
    
    var hospitalPhoneArray = ["03806114005", "03806114171", "03806116914"]
    
    var hospitalAddressArray = ["Cumhuriyet Mahallesi Park Caddesi No: 20", "Osmaniye Mahallesi Yalın Sokak No: 1", "Osmaniye Mahallesi Yalın Sokak No: 1"]
    
    var hospitalCoordinatesArray = ["41.086975,31.115182", "41.088022,31.126828", "41.086991,31.142376"]
    
    var hospitalMailArray = ["info@akcakocadh.gov.tr", "-", "-"]
    
    var hospitalWebArray = ["http://www.akcakocadh.gov.tr/", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hastaneler"
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
        return hospitalNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HospitalCell", forIndexPath: indexPath) as! HospitalTableViewCell
        
        cell.hospitalName.text = hospitalNameArray[indexPath.row]
        cell.hospitalPhone.text = hospitalPhoneArray[indexPath.row]
        cell.hospitalImage.image = UIImage(named: hospitalImageArray[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = hospitalNameArray[indexPath.row]
        viewController.detailAddressStr = hospitalAddressArray[indexPath.row]
        viewController.detailPhoneStr = hospitalPhoneArray[indexPath.row]
        viewController.detailMailStr = hospitalMailArray[indexPath.row]
        viewController.detailWebStr = hospitalWebArray[indexPath.row]
        viewController.detailImageStr = hospitalImageArray[indexPath.row]
        viewController.detailCoordinatesStr = hospitalCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
