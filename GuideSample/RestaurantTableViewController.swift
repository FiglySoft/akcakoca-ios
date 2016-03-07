//
//  RestaurantTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurantNameArray = ["Akbey Restaurant","Bahçe 2 Cafe Restaurant","Çapa Restaurant","Çardak Restaurant","Efran Restaurant","Hamsi Balık Restaurant","İskele Balık Restaurant","Kamelya Restaurant","Piri Reis Restaurant","Turkuaz Restaurant","Barınak Balık Lokantası","Bolu Kardeşler Lokantası","Cafe Mutfak","Çetinkaya Lokantası","Dalyan Balık Lokantası","Gaziantep Pide Salonu","Gözde Köfte Salonu","Hanımeli Mutfağı","Hülyam Lokantası","Kantin Pide Salonu","Mengen Sofrası","Mustafanın Yeri","Ömür Lokantası","Özkardeşler Lokantası","Yakamoz Balık Lokantası"]
    
    var restaurantPhoneArray = ["03806113233", "03806115400", "03806115757", "03806187516", "-", "03806118866", "03806112500", "03806113033", "03806112800", "03806115000", "03806118730", "03806114145", "05366740250", "03806118615", "03806119656", "03806118607", "03806118607", "03806189010", "03806112352", "03806116131", "03806113452", "03806118484", "03806112637", "03806187234", "03806118866"]
    
    var restaurantImageArray = ["akbey_restaurant.jpg", "bahce_restaurant.jpg", "capa_restaurant.jpg", "cardak_restaurant.jpg", "efran_restaurant.jpg", "hamsi_restaurant.jpg", "iskele_restaurant.jpg", "kamelya_restaurant.jpg", "piri_restaurant.jpg", "turkuaz_restaurant.jpg", "barinak_lokanta.jpg", "bolu_lokanta.jpg", "cafe_mutfak.jpg", "restaurant_icon.png", "dalyan_lokantasi.jpg", "restaurant_icon.png", "restaurant_icon.png", "restaurant_icon.png", "hulyam_lokantası.jpg", "kantin_pide.jpg", "mengen_lokanta.jpg", "mustafanin_lokanta.jpg", "omur_lokanta.jpg", "ozkardesler_lokanta.jpg", "yakamoz_lokanta.jpg"]
    
    var restaurantAddressArray = ["Osmaniye Mahallesi Atatürk Caddesi No: 19", "Osmaniye Mahallesi Atatürk Caddesi No: 29", "Osmaniye Mahallesi Atatürk Caddesi No: 27", "Ayazlı Mahallesi Ereğli Caddesi No: 251", "Yalı Mahallesi İnönü Caddesi No: 8", "Yalı Mahallesi Plaj Sokak No: 2", "Yalı Mahallesi Plaj Sokak No: 16A", "Osmaniye Mahallesi Atatürk Caddesi No: 13", "Yalı Mahallesi Plaj Sokak No: 16C", "Osmaniye Mahallesi Atatürk Caddesi No: 73/1", "Yalı Mahallesi Plaj Sokak No: 18", "Yalı Mahallesi Cumhuriyet Meydanı No: 5A", "Yalı Mahallesi İskele Sokak No: 20A", "Osmaniye Mahallesi Atatürk Caddesi No: 96A", "Yalı Mahallesi Misafir Sokak No: 8B", "Yalı Mahallesi İnönü Caddesi No: 9B", "Yalı Mahallesi Oto Sokak No: 1C", "Ayazlı Mahallesi Ereğli Caddesi No: 112A", "Yalı Mahallesi Oto Sokak No: 1L", "Yalı Mahallesi Plaj Sokak No: 4", "Osmaniye Mahallesi Atatürk Caddesi No: 64B", "Osmaniye Mahallesi Kumlu Sokak No: 8A", "Yalı Mahallesi Bahadır Yalçın Caddesi No: 25", "Ayazlı Mahallesi Ereğli Caddesi No: 128A", "Yalı Mahallesi Plaj Sokak No: 4"]
    
    var restaurantCoordinatesArray = ["41.089872,31.128524", "41.090010,31.131175", "41.089942,31.130487", "41.091882,31.187262", "41.088776,31.120186", "41.089318,31.119827", "41.089320,31.121951", "41.089860,31.126970", "-", "41.090218,31.139638", "41.089259,31.122736", "41.088762,31.122319", "41.089200,31.122627", "41.089832,31.137964", "41.089327,31.123338", "41.088533,31.121236", "41.088553,31.123695", "41.083981,31.173493", "41.088851,31.123609", "41.089269,31.123609", "41.089807,31.131830", "41.089936,31.136403", "41.087732,31.124212", "41.084546,31.175036", "41.089236,31.119982"]
    
    var restaurantMailArray = ["-", "-", "info@capaakcakoca.com", "info@akcakocacardak.com", "-", "-", "info@iskelebalik.net", "-", "-", "-", "-", "-", "-", "-", "-","-", "-", "-", "-", "-","-", "info@mustafaninyeri.com.tr", "-", "-", "-"]
    
    var restaurantWebArray = ["http://www.ak-bey.com/", "http://www.bahcecafe2.com/", "http://www.capaakcakoca.com/", "http://www.akcakocacardak.com/", "-", "-", "http://www.iskelebalik.net/", "http://www.akcakocakamelya.com/", "-", "http://www.turkuazbeachotel.com/default.asp", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "http://www.mustafaninyeri.com.tr/", "-", "-", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Restoranlar"
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
        return restaurantNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("restaurantsCell", forIndexPath: indexPath) as! RestaurantsTableViewCell
        
        cell.restaurantItemName.text = restaurantNameArray[indexPath.row]
        cell.restaurantItemPhone.text = restaurantPhoneArray[indexPath.row]
        cell.restaurantItemImage.image = UIImage(named: restaurantImageArray[indexPath.row])
        cell.restaurantItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = restaurantNameArray[indexPath.row]
        viewController.detailAddressStr = restaurantAddressArray[indexPath.row]
        viewController.detailPhoneStr = restaurantPhoneArray[indexPath.row]
        viewController.detailMailStr = restaurantMailArray[indexPath.row]
        viewController.detailWebStr = restaurantWebArray[indexPath.row]
        viewController.detailImageStr = restaurantImageArray[indexPath.row]
        viewController.detailCoordinatesStr = restaurantCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
