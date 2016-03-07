//
//  HotelsTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 03/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HotelsTableViewController: UITableViewController {
    
    var hotelsNamesArray = ["Bayraktar Otel","Diapolis Oteli","Esentepe Oteli","Mesen Otel","Otel Akçakoca","Otel Akçaşehir","Otel Vadi","Sezgin Oteli","Sky Tower Otel","Tuana Beach Otel","Turkuaz Beach Otel","Yeni Çınar Otel","Yılmaz Otel"]
    
    var hotelsPhonesArray = ["03806116677","03806116600","03806117879","03806114436","03806114525","03806119306","03806188484","03806114162","4447759","03806114335","03806115000","03806117003","03806114741"]
    
    var hotelsImagesArray = ["bayraktarotel.jpg", "diapolisotel.jpg", "esentepeotel.jpg", "mesenotel.jpg", "otelakcakoca.jpg", "otelakcasehir.jpg", "otelvadi.jpg", "sezginotel.jpg", "skytowerotel.jpg", "tuanabeachotel.jpg", "turkuazbeachotel.jpg", "yenicinarotel.jpg", "yilmazotel.jpg"]
    
    var hotelsAddressArray = ["Osmaniye Mahallesi Çınar Sokak No: 2", "Yalı Mahallesi İnönü Caddesi No: 30-32-34", "Hacıyusuflar Mahallesi Koru Sokak No: 1", "Edilli Köyü Mesen Sokak No: 40", "Ayazlı Mahallesi Eredli Caddesi No: 33-35", "Hacıyusuflar Mahallesi İstanbul Caddesi No: 182", "Ayazlı Mahallesi Düzce Caddesi No: 20", "Osmaniye Mahallesi Atatürk Caddesi No: 44", "Yalı Mahallesi İnönü Caddesi No: 42 Ceneviz Sokak No: 2", "Hacıyusuflar Mahallesi Hüsnü Gonca Caddesi No: 4 Kale Yolu", "Osmaniye Mahallesi Atatürk Caddesi No: 77-73", "Hacıyusuflar Mahallesi Bülbül Sokak No: 15/B", "Osmaniye Mahallesi Atatürk Caddesi No: 38"]
    
    var hotelsCoordinatesArray = ["41.089517,31.129258", "41.089047,31.118551", "41.085229,31.104330", "41.079507,31.076183", "41.089816,31.144773", "41.084289,31.103666", "41.082833,31.176630", "41.089593,31.129976", "41.088688,31.117217", "41.086617,31.103721"," 41.090080,31.139896", "41.085036,31.103419", "41.089546,31.129139"]
    
    var hotelMailsArray = ["info@bayraktarotel.com", "-", "-", "info@mesenotel.com", "info@otelakcakoca.com.tr", "-", "-", "sezginotel@hotmail.com", "info@skytowerhotel.com", "oteltuana@gmail.com", "-", "rezervasyon@akcakocacinarotel.com", "-"]
    
    var hotelWebArray = ["http://www.bayraktarotel.com/", "http://www.diapolishotelakcakoca.com.tr/", "http://www.esentepeotel.com/", "http://www.mesenotel.com/", "http://www.otelakcakoca.com.tr","-", "http://otelvadi.com.tr/", "http://www.sezginotel.com/index.php", "http://www.skytowerhotel.com/", "http://www.oteltuana.com/", "http://www.turkuazbeachotel.com/", "http://akcakocacinarotel.com/", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Oteller"
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
        return hotelsNamesArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("hotelsCell", forIndexPath: indexPath) as! HotelsTableViewCell
        
        cell.hotelsItemName.text = hotelsNamesArray[indexPath.row]
        cell.hotelsItemPhone.text = hotelsPhonesArray[indexPath.row]
        cell.hotelsItemImage.image = UIImage(named: hotelsImagesArray[indexPath.row])
        cell.hotelsItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = hotelsNamesArray[indexPath.row]
        viewController.detailAddressStr = hotelsAddressArray[indexPath.row]
        viewController.detailPhoneStr = hotelsPhonesArray[indexPath.row]
        viewController.detailMailStr = hotelMailsArray[indexPath.row]
        viewController.detailWebStr = hotelWebArray[indexPath.row]
        viewController.detailImageStr = hotelsImagesArray[indexPath.row]
        viewController.detailCoordinatesStr = hotelsCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
