//
//  HostelsTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HostelsTableViewController: UITableViewController {
    
    var hostelsNameArray = ["Akçakoca Öğretmenevi","Bahar Pansiyon","Beş Yıldız Apart Pansiyon","Çamlık Pansiyon","Can Apart","Demir Pansiyon","Deniz Feneri Pansiyon","Diapolis Apartları","Doğuş Pansiyon","Emel Pansiyon","Hostel Mimoza","Kar Pansiyon","Mutlu Pansiyon","Name Pansiyon","Pandul Pansiyon","Poyraz Pansiyon","Prestij Apart","Sağlam Pansiyon","Sahil Pansiyon","Şahin Pansiyon","Tunç Pansiyon"]
    
    var hostelsPhoneArray = ["038061192 79","03806114535","03806188100","03806224132","03806119665","03806286261","03806117711","03806118939","03806117733","03806114682","03806114545","03806286223","03806116655","03806117111","03806116284","03806114098","03806116431","05337285087","03806286237","03806112484","03806187160"]
    
    var hostelsImageArray = ["akcakocaogretmenevi.jpg", "baharpansiyon.jpg", "besyildizapart.jpg", "camlikpansiyon.jpg", "canapart.jpg", "demirpansiyon.jpg", "denizfeneri.jpg", "diapolisapartlari.jpg", "doguspansiyon.jpg", "emelpansiyon.jpg", "hostelmimoza.jpg", "karpansiyon.jpg", "mutlupansiyon.jpg", "namepansiyon.jpg", "hostels_icon.png", "hostels_icon.png", "prestijapart.jpg", "saglampansiyon.jpg", "sahilpansiyon.jpg", "sahinpansiyon.jpg", "tuncpansiyon.jpg"]
    
    var hostelsAddressArray = ["Hacıyusuflar Mahallesi İstanbul Caddesi No: 152", "Osmaniye Mahallesi Çınar Sokak No: 4", "Ayazlı Mahallesi İzgi Sokak No: 14", "Karaburun Mücavir Köyü 101 Sokak No: 24", "Hacıyusuflar Mahallesi Anıt Sokak No: 10", "Mücavir Karaburun 2 Sokak No: 54", "Osmaniye Mahallesi Atatürk Caddesi No: 92", "Hacıyusuflar Mahallesi Bülbül Sokak No: 11", "Osmaniye Mahallesi 2 Sokak No: 11", "Ayazlı Mahallesi Ankara Caddesi No: 39", "Cumhuriyet Mahallesi Yanmaz Sokak No: 12 Esentepe Mevkii", "Mücavir Melenağzı Köyü 2 Sokak No: 124", "Ayazlı Mahallesi Çınar Sokak No: 1A", "Osmaniye Mahallesi Karabekir Caddesi No: 27/1", "Osmaniye Mahallesi Gençlik Sokak No: 4", "Osmaniye Mahallesi Atatürk Caddesi No: 112", "Osmaniye Mahallesi Ankara Caddesi No: 48", "Akçakoca İlçesi", "Mücavir Karaburun Köyü 101 Sokak No: 17", "Yalı Mahallesi Pazar Sokak No 9", "Ayazlı Mahallesi Deniz Sokak No: 6"]
    
    var hostelsCoordinatesArray = ["41.087299,31.106872", "41.089496,31.129255", "41.083940,31.172353", "41.085942,31.120374", "41.086761,31.099622", "41.072198,31.010236", "41.089987,31.137975", "41.084886,31.102992", "41.089783,31.139535", "41.089574,31.130848", "41.087099,31.111275", "41.072520,31.000175", "41.089793,31.129434", "41.087682,31.140651", "41.089964,31.138982", "41.089944,31.138724", "41.089138,31.130336", "41.090898,31.151096", "41.072970,31.016596", "41.089299,31.123000", "41.095607,31.187216"]
    
    var hostelsMailArray = ["akcakocaogretmenevi@hotmail.com", "-", "hakan7501@hotmail.com", "-", "canapartpansiyon@gmail.com", "-", "info@akcakocaapartotel.com", "-", "-", "-", "-", "-", "-", "apartname@hotmail.com", "bilgi@pandulpansiyon.com", "-", "info@prestijapart.com", "-", "-", "-", "-"]
    
    var hostelsWebArray = ["http://akcakoca-ogretmenevi.com/wp/", "http://www.akcakocabaharpansiyon.com/", "http://www.akcakocabesyildiz.com/", "-", "http://www.canapart.net", "https://tr-tr.facebook.com/DEM%C4%B0R-PANS%C4%B0YON-198685383535225/timeline/", "http://akcakocaapartotel.com", "-", "-", "-", "http://www.saklibahcehostelmimoza.com/", "http://www.kartatilkoyu.net", "-", "http://www.apartname.com", "http://www.pandulpansiyon.com/", "http://www.akcakocapoyrazotel.com/index.php", "http://www.prestijapart.com/", "-", "-", "http://www.akcakocasahinpansiyon.com/", "https://www.facebook.com/TUN%C3%87-MOTEL-624974664285532/timeline/"]
    
    var arrayIndex:Int=0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pansiyonlar"
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
        return hostelsNameArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("hostelsCell", forIndexPath: indexPath) as! HostelsTableViewCell

        cell.hostelsItemName.text = hostelsNameArray[indexPath.row]
        cell.hostelsItemPhone.text = hostelsPhoneArray[indexPath.row]
        cell.hostelsItemImage.image = UIImage(named: hostelsImageArray[indexPath.row])
        cell.hostelsItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //arrayIndex = indexPath.row
        //performSegueWithIdentifier("gotoHotelDetail", sender: self)
        //var viewController = (viewcontrollerismi)self.storyboard!.instantiateViewControllerWithIdentifier("asd")
        //viewController.link = ""
        //self.navigationController!.pushViewController(viewController, animated: true)
        let viewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailPage") as! DetailPageViewController
        viewController.detailNameStr = hostelsNameArray[indexPath.row]
        viewController.detailAddressStr = hostelsAddressArray[indexPath.row]
        viewController.detailPhoneStr = hostelsPhoneArray[indexPath.row]
        viewController.detailMailStr = hostelsMailArray[indexPath.row]
        viewController.detailWebStr = hostelsWebArray[indexPath.row]
        viewController.detailImageStr = hostelsImageArray[indexPath.row]
        viewController.detailCoordinatesStr = hostelsCoordinatesArray[indexPath.row]
        self.navigationController!.pushViewController(viewController, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gotoHotelDetail" {
            let svc = segue.destinationViewController as! HotelDetailViewController
            svc.hotelNameStr = hostelsNameArray[arrayIndex]
            svc.hotelAddressStr = hostelsAddressArray[arrayIndex]
            svc.hotelPhoneStr = hostelsPhoneArray[arrayIndex]
            svc.hotelImageStr = hostelsImageArray[arrayIndex]
            svc.hotelMailStr = hostelsMailArray[arrayIndex]
            svc.hotelWebStr = hostelsWebArray[arrayIndex]
        }
    }*/
}
