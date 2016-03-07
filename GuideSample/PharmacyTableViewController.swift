//
//  PharmacyTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 07/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class PharmacyTableViewController: UITableViewController {
    
    var pharmacyNameArray = ["Akçakoca Eczanesi", "Büyük Eczane", "Çuhallı Eczanesi", "Hayat Eczanesi", "Karadeniz Eczanesi", "Meltem Eczanesi", "Nimet Eczanesi", "Seçkin Eczanesi"]
    
    var pharmacyImageArray = ["akcakoca_eczane.jpg", "pharmacy_icon.png", "cuhalli_eczanesi.jpg", "hayat_eczanesi.jpg", "karadeniz_eczanesi.jpg", "pharmacy_icon.png", "nimet_eczanesi.jpg", "seckin_eczanesi.jpg"]
    
    var pharmacyAddressArray = ["Cumhuriyet Mahallesi Park Caddesi No: 23C", "Yalı Mahallesi Atik Sokak No: 2A", "Osmaniye Mahallesi Atatürk Caddesi No: 146", "Yalı Mahallesi Bahadır Yalçın Caddesi No: 26A", "Cumhuriyet Mahallesi Park Caddesi No: 23A", "Osmaniye Mahallesi Atatürk Caddesi No: 107", "Yalı Mahallesi İstanbul Caddesi No: 16B", "Cumhuriyet Mahallesi İstanbul Caddesi No: 91A"]
    
    var pharmacyPhoneArray = ["03806116433", "03806113523", "03806119400", "03806114572", "03806117092", "-", "03806119344", "03806113366"]
    
    var pharmacyCoordinatesArray = ["41.086620,31.116089", "41.087401,31.125706", "41.088021,31.140712", "41.088402,31.123479", "41.086555,31.116034", "41.087567,31.142145", "41.088143,31.122472", "41.087669,31.117297"]
    
    var pharmacyMailArray = ["-", "-", "-", "-", "-", "-", "-", "-"]
    
    var pharmacyWebArray = ["-", "-", "-", "-", "-", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Eczaneler"
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
        return pharmacyNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PharmacyCell", forIndexPath: indexPath) as! PharmacyTableViewCell
        
        cell.pharmacyName.text = pharmacyNameArray[indexPath.row]
        cell.pharmacyPhone.text = pharmacyPhoneArray[indexPath.row]
        cell.pharmacyImage.image = UIImage(named: pharmacyImageArray[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = pharmacyNameArray[indexPath.row]
        viewController.detailAddressStr = pharmacyAddressArray[indexPath.row]
        viewController.detailPhoneStr = pharmacyPhoneArray[indexPath.row]
        viewController.detailMailStr = pharmacyMailArray[indexPath.row]
        viewController.detailWebStr = pharmacyWebArray[indexPath.row]
        viewController.detailImageStr = pharmacyImageArray[indexPath.row]
        viewController.detailCoordinatesStr = pharmacyCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
