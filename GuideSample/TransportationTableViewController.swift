//
//  TransportationTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class TransportationTableViewController: UITableViewController {
    
    var transportationNameArray = ["Düzce Güven", "Efe Tur", "İstanbul Seyahat", "Kamil Koç", "Metro Turizm", "Pamukkale Turizm", "Ulusoy", "Üstün Erçelik"]
    
    var transportationImageArray = ["transportation_icon.png", "transportation_icon.png", "transportation_icon.png", "transportation_icon.png", "transportation_icon.png", "transportation_icon.png", "transportation_icon.png", "transportation_icon.png"]
    
    var transportationAddressArray = ["Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1", "Ayazlı Mahallesi Terminal Caddesi No: 1"]
    
    var transportationPhoneArray = ["03806118890", "03806117272", "03806117585", "03806117585", "03806118575", "03806118890", "03806118890", "03806117585"]
    
    var transportationCoordinateArray = ["41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388", "41.086338,31.175388"]
    
    var transportationMailArray = ["-", "-", "-", "-", "-", "-", "-", "-"]
    
    var transportationWebArray = ["-", "-", "-", "-", "-", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ulaşım"
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
        return transportationNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TransportationCell", forIndexPath: indexPath) as! TransportationTableViewCell
        
        cell.transportationName.text = transportationNameArray[indexPath.row]
        cell.transportationPhone.text = transportationPhoneArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = transportationNameArray[indexPath.row]
        viewController.detailAddressStr = transportationAddressArray[indexPath.row]
        viewController.detailPhoneStr = transportationPhoneArray[indexPath.row]
        viewController.detailMailStr = transportationMailArray[indexPath.row]
        viewController.detailWebStr = transportationWebArray[indexPath.row]
        viewController.detailImageStr = transportationImageArray[indexPath.row]
        viewController.detailCoordinatesStr = transportationCoordinateArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
