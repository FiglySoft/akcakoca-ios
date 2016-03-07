//
//  HotelDetailViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 05/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit
import MapKit

class HotelDetailViewController: UIViewController {
    
    @IBOutlet weak var hotelDetailScrollView: UIScrollView!
    
    @IBOutlet weak var hotelDetailImage: UIImageView!
    
    @IBOutlet weak var hotelDetailName: UILabel!
    
    @IBOutlet weak var hotelDetailAddress: UILabel!
    
    @IBOutlet weak var hotelDetailPhone: UILabel!
    
    @IBOutlet weak var hotelDetailMail: UILabel!
    
    @IBOutlet weak var hotelDetailWeb: UILabel!
    
    @IBOutlet weak var hotelDetailMap: MKMapView!
    
    var hotelNameStr:String!
    var hotelPhoneStr:String!
    var hotelAddressStr:String!
    var hotelMailStr:String!
    var hotelWebStr:String!
    var hotelImageStr:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hotelDetailName.text = hotelNameStr
        hotelDetailPhone.text = hotelPhoneStr
        hotelDetailAddress.text = hotelAddressStr
        hotelDetailMail.text = hotelMailStr
        hotelDetailWeb.text = hotelWebStr
        hotelDetailImage.image = UIImage(named: hotelImageStr)
        
        hotelDetailScrollView.addSubview(hotelDetailImage)
        hotelDetailScrollView.addSubview(hotelDetailName)
        hotelDetailScrollView.addSubview(hotelDetailAddress)
        hotelDetailScrollView.addSubview(hotelDetailPhone)
        hotelDetailScrollView.addSubview(hotelDetailMail)
        hotelDetailScrollView.addSubview(hotelDetailWeb)
        hotelDetailScrollView.addSubview(hotelDetailMap)
        view.addSubview(hotelDetailScrollView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
