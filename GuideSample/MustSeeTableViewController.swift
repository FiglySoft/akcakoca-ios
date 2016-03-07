//
//  MustSeeTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class MustSeeTableViewController: UITableViewController {
    
    var mustSeeNameArray = ["Ceneviz Kalesi", "Kurugöl Kanyonu ve Şelalesi", "Mehmet Arif Bey Köşkü", "Özkök Kültür ve Sanat Evi", "Sarıyayla Şelalesi", "Fakıllı Mağarası"]
    
    var mustSeeImageArray = ["ceneviz.jpg", "kurugol.jpg", "mehmetarif.jpg", "ozkok.jpg", "sariyayla.jpg", "must_see_icon.png"]
    
    var mustSeeAddressArray = ["Hacıyusuflar Mahallesi Hüsnü Gonca Caddesi", "Kurugöl Köyü", "Osmaniye Mahallesi Resul Efendi Sokak No: 2", "Osmaniye Mahallesi Özkök Sokak No: 2", "Sarıyayla Köyü", "Düzce ili Akçakoca İlçesi"]
    
    var mustSeePhoneArray = ["-", "-", "-", "-", "-", "-"]
    
    var mustSeeCoordinatesArray = ["41.085789,31.092955", "-", "41.087451,31.135020", "41.089729,31.136840", "-", "-"]
    
    var mustSeeMailArray = ["-", "-", "-", "-", "-", "-"]
    
    var mustSeeWebArray = ["-", "-", "-", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Görmeden Geçme"
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
        return mustSeeNameArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MustSeeCell", forIndexPath: indexPath) as! MustSeeTableViewCell

        cell.mustSeeItemName.text = mustSeeNameArray[indexPath.row]
        cell.mustSeeItemImage.image = UIImage(named: mustSeeImageArray[indexPath.row])
        cell.mustSeeItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = mustSeeNameArray[indexPath.row]
        viewController.detailAddressStr = mustSeeAddressArray[indexPath.row]
        viewController.detailPhoneStr = mustSeePhoneArray[indexPath.row]
        viewController.detailMailStr = mustSeeMailArray[indexPath.row]
        viewController.detailWebStr = mustSeeWebArray[indexPath.row]
        viewController.detailImageStr = mustSeeImageArray[indexPath.row]
        viewController.detailCoordinatesStr = mustSeeCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
