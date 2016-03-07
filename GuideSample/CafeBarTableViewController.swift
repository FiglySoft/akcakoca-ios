//
//  CafeBarTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class CafeBarTableViewController: UITableViewController {
    
    var cafeBarNameArray = ["Cafe Altyazı", "Bahçe Cafe", "Cadde Cafe", "Çınar Cafe", "Değirmen Cafe", "Erdeniz Cafe", "Karamel Cafe", "Kardelen Cafe", "Köşem Cafe", "Mola Cafe Restaurant", "Rocca Cafe", "Şahane Cafe", "Turan Pasta Cafe", "Tutaste Cafe", "Undankale Bakery", "1010 Cafe Bistro", "Çakıl Disco Bar", "Çatı Cafe Pub", "Great Bar", "Horon Bar", "Marina Bar"]
    
    var cafeBarPhoneArray = ["03806114080", "05335241902", "03806115900", "05326240059", "03806112478", "03806113315", "03806114643", "03806113636", "03806114403", "03806189898", "05369344845", "03806114616", "03806117171", "05378511954", "05332791688", "03806118888", "-", "03806118343", "-", "-", "03806114010"]
    
    var cafeBarImageArray = ["altyazi_cafe.jpg", "bahce_cafe.jpg", "cadde_cafe.jpg", "cinar_cafe.jpg", "degirmen_cafe.jpg", "erdeniz_cafe.jpg", "karamel_cafe.jpg", "kardelen_cafe.jpg", "kosem_cafe.jpg", "cafe_icon.png", "rocca_cafe.jpg", "sahane_cafe.jpg", "turan_cafe.jpg", "cafe_icon.png", "undankale.jpg", "1010bistro.png", "cakilbar.jpg", "catibar.jpg", "cafe_icon.png", "horonbar.jpg", "marinabar.jpg"]
    
    var cafeBarAddressArray = ["Cumhuriyet Mahallesi Park Caddesi No: 143A", "Osmaniye Mahallesi Kumlu Sokak No: 1", "Osmaniye Mahallesi Atatürk Caddesi No: 46A", "Osmaniye Mahallesi Atatürk Caddesi No: 42A", "Hacıyusuflar Mahallesi İstanbul Caddesi No: 219", "Osmaniye Mahallesi Atatürk Caddesi No: 104A", "Osmaniye Mahallesi Atatürk Caddesi No: 52B", "Osmaniye Mahallesi Atatürk Caddesi No: 66F", "Osmaniye Mahallesi Atatürk Caddesi No: 40", "Ayazlı Mahallesi Atatürk Caddesi No: 134", "Osmaniye Mahallesi Atatürk Caddesi No: 60A", "Cumhuriyet Mahallesi Park Caddesi No: 121A", "Yalı Mahallesi Bahadır Yalçın Caddesi No: 40B", "Ayazlı Mahallesi Kayabaşı Caddesi No: 12B", "Osmaniye Mahallesi Atatürk Caddesi No: 47", "Osmaniye Mahallesi Atatürk Caddesi No: 44/1", "Mücavir Karaburun Köyü 103 Sokak No: 2", "Osmaniye Mahallesi Atatürk Caddesi No: 36A,36B", "Yalı Mahallesi İnönü Caddesi No: 4", "Yalı Mahallesi Misafir Sokak No: 28", "Yalı Mahallesi Misafir Sokak No: 36"]
    
    var cafeBarCoordinateArray = ["41.088241,31.112087", "41.090285,31.134667", "41.089579,31.130096", "41.089579,31.129610", "41.086975,31.115182", "41.089863,31.138296", "41.089614,31.130963", "41.089917,31.132456", "41.089536,31.129488", "41.085697,31.177855", "41.089688,31.131486", "41.088110,31.114675", "41.087126,31.124169", "41.091004,31.148496", "41.090097,31.138236", "41.089582,31.130116", "41.072800,31.015566", "41.089596,31.128833", "41.088701,31.121296", "41.089168,31.122365", "41.089245,31.121996"]
    
    var cafeBarMailArray = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "cemilguzel@yahoo.com", "-", "-", "-", "-", "-"]
    
    var cafeBarWebArray = ["-", "-", "http://caddeakcakoca.com/", "http://cinarcafe.net/", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "http://www.undankale.com", "http://www.1010cafebistro.com/", "https://www.facebook.com/pages/Karaburun-Cak%C4%B1l-D%C4%B1sko-Bar/181281185387989", "-", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cafe - Barlar"
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
        return cafeBarNameArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cafeCell", forIndexPath: indexPath) as! CafeBarTableViewCell
        
        cell.cafeBarItemName.text = cafeBarNameArray[indexPath.row]
        cell.cafeBarItemPhone.text = cafeBarPhoneArray[indexPath.row]
        cell.cafeBarItemImage.image = UIImage(named: cafeBarImageArray[indexPath.row])
        cell.cafeBarItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = cafeBarNameArray[indexPath.row]
        viewController.detailAddressStr = cafeBarAddressArray[indexPath.row]
        viewController.detailPhoneStr = cafeBarPhoneArray[indexPath.row]
        viewController.detailMailStr = cafeBarMailArray[indexPath.row]
        viewController.detailWebStr = cafeBarWebArray[indexPath.row]
        viewController.detailImageStr = cafeBarImageArray[indexPath.row]
        viewController.detailCoordinatesStr = cafeBarCoordinateArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
