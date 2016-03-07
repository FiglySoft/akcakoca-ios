//
//  BeachTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 05/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class BeachTableViewController: UITableViewController {
    
    var beachNameArray = ["Akevler Mevkii Kemos Plajı", "Akkaya Plajı", "Beyhanlı Plajı", "Çuhallı Plajı", "Değirmenağzı Plajı", "Edilli Ağzı Plajı", "Kadınlar Plajı", "Kalkın Plajı", "Karaburun Plajı", "Kale Plajı", "Melenağzı Plajı", "Paşalar Plajı", "Tahirli Plajı"]
    
    var beachImageArray = ["akevler.jpg", "akkaya.jpg", "beach_icon.png", "cuhalli.jpg", "degirmenagzi.jpg", "edilliagzi.jpg", "kadinlar.jpg", "kalkin.jpg", "karaburun.jpg", "kale.jpg", "beach_icon.png", "pasalar.jpg", "beach_icon.png"]
    
    var beachAddressArray = ["Ayazlı Mahallesi Orkide Sokak", "Mücavir Akkaya Köyü Plajı", "Mücavir Beyhanlı Köyü Plajı", "Osmaniye Mahallesi Kumluk Sokak", "Hacıyusuflar Mahallesi Hüsnü Gonca Caddesi", "Mücavir Edilli Köyü", "Hacıyusuflar Mahallesi Oğuz Sokak", "Mücavir Kalkın Köyü", "Mücavir Karaburun Köyü", "Hacıyusuflar Mahallesi Hüsnü Gonca Caddesi", "Mücavir Melenağzı Köyü", "Mücavir Paşalar Köyü", "Mücavir Tahirli Köyü"]
    
    var beachCoordinatesArray = ["41.094706,31.187672", "41.103628,31.248532", "41.100477,31.230883", "41.090524,31.140557", "41.087249,31.103476", "41.077665,31.068961", "41.086407,31.094109", "41.075872,31.043537", "41.072803,31.013496", "41.085346,31.091664", "41.072072,30.998275", "41.075909,31.025065", "41.077334,31.065371"]
    
    var beachPhoneArray = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-"]
    
    var beachMailArray = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-"]
    
    var beachWebArray = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Plajlar"
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
        return beachNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("beachesCell", forIndexPath: indexPath) as! BeachTableViewCell
        
        cell.beachItemName.text = beachNameArray[indexPath.row]
        cell.beachItemImage.image = UIImage(named: beachImageArray[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = beachNameArray[indexPath.row]
        viewController.detailAddressStr = beachAddressArray[indexPath.row]
        viewController.detailPhoneStr = beachPhoneArray[indexPath.row]
        viewController.detailMailStr = beachMailArray[indexPath.row]
        viewController.detailWebStr = beachWebArray[indexPath.row]
        viewController.detailImageStr = beachImageArray[indexPath.row]
        viewController.detailCoordinatesStr = beachCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
