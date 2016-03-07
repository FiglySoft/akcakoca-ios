//
//  DetailPageViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 06/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit
import MapKit

class DetailPageViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var detailPageImage: UIImageView!
    
    @IBOutlet weak var detailPageName: UILabel!
    
    @IBOutlet weak var detailPageAddress: UILabel!
    
    @IBAction func detailPagePhoneButton(sender: AnyObject) {
        if(detailPagePhone.text != "-"){
            createCallWarning(detailPhoneStr)
        }
    }
    @IBOutlet weak var detailPagePhone: UILabel!
    
    @IBOutlet weak var detailPageMail: UILabel!
    
    @IBAction func detailPageWebButton(sender: AnyObject) {
        if(detailPageWeb.text != "-"){
            createWebWarning()
        }
    }
    @IBOutlet weak var detailPageWeb: UILabel!
    
    @IBOutlet weak var detailPageMap: MKMapView!
    
    var detailNameStr:String!
    var detailPhoneStr:String!
    var detailAddressStr:String!
    var detailMailStr:String!
    var detailWebStr:String!
    var detailImageStr:String!
    var detailCoordinatesStr:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailPageName.text = detailNameStr
        detailPagePhone.text = detailPhoneStr
        detailPageAddress.text = detailAddressStr
        detailPageMail.text = detailMailStr
        detailPageWeb.text = detailWebStr
        detailPageImage.image = UIImage(named: detailImageStr)
        
        let coordinateArray = detailCoordinatesStr.characters.split{$0 == ","}.map(String.init)
        let lat = coordinateArray[0]
        let lng = coordinateArray[1]
        
        let MomentaryLatitude = (lat as NSString).doubleValue
        let MomentaryLongitude = (lng as NSString).doubleValue
        
        let location = CLLocationCoordinate2D(
            latitude: MomentaryLatitude,
            longitude: MomentaryLongitude
        )
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = detailNameStr
        
        detailPageMap.addAnnotation(annotation)
        detailPageMap.setRegion(region, animated: true)
        
        self.title = detailNameStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createCallWarning(phone: String) {
        let callAlert = UIAlertController(title: "Arama", message: "Aramak istiyor musunuz?", preferredStyle: UIAlertControllerStyle.Alert)
        
        callAlert.addAction(UIAlertAction(title: "Ara", style: .Default, handler: { (action: UIAlertAction!) in
            if let url = NSURL(string: "tel://\(phone)") {
                UIApplication.sharedApplication().openURL(url)
            }
        }))
        
        callAlert.addAction(UIAlertAction(title: "Vazgeç", style: .Default, handler: { (action: UIAlertAction!) in
            
        }))
        
        presentViewController(callAlert, animated: true, completion: nil)
    }
    
    func createWebWarning() {
        let callAlert = UIAlertController(title: "Uyarı!", message: "İnternet sitesini Safari üzerinde açmak istiyor musunuz?", preferredStyle: UIAlertControllerStyle.Alert)
        
        callAlert.addAction(UIAlertAction(title: "Aç", style: .Default, handler: { (action: UIAlertAction!) in
            UIApplication.sharedApplication().openURL(NSURL(string: self.detailWebStr)!)
        }))
        
        callAlert.addAction(UIAlertAction(title: "Vazgeç", style: .Default, handler: { (action: UIAlertAction!) in
            
        }))
        
        presentViewController(callAlert, animated: true, completion: nil)
    }
    
    func openMapForPlace(lat: String, lng: String) {
        
        let lat1 : NSString = lat
        let lng1 : NSString = lng
        
        let latitute:CLLocationDegrees =  lat1.doubleValue
        let longitute:CLLocationDegrees =  lng1.doubleValue
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitute, longitute)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "\(detailNameStr)"
        mapItem.openInMapsWithLaunchOptions(options)
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "pin"
        var pin = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseIdentifier) as? MKPinAnnotationView
        if pin == nil {
            pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
            pin!.pinColor = .Red
            pin!.canShowCallout = true
            pin!.rightCalloutAccessoryView = UIButton(type: .DetailDisclosure)
        } else {
            pin!.annotation = annotation
        }
        return pin
    }
    
    func mapView(mapView: MKMapView, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == annotationView.rightCalloutAccessoryView {
            let coordinateArray = detailCoordinatesStr.characters.split{$0 == ","}.map(String.init)
            let lat = coordinateArray[0]
            let lng = coordinateArray[1]
            openMapForPlace(lat, lng: lng)
        }
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
