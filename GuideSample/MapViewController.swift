//
//  MapViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 01/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, MKMapViewDelegate{
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var pickerDataArray = ["Oteller","Tatil Köyleri","Pansiyonlar","Restoranlar","Cafe - Barlar","Plajlar","Tarihi Mekanlar","Görmeden Geçme","Hastaneler","Eczaneler"]
    
    //HOTELLER
    var hotelsNamesArray = ["Bayraktar Otel","Diapolis Oteli","Esentepe Oteli","Mesen Otel","Otel Akçakoca","Otel Akçaşehir","Otel Vadi","Sezgin Oteli","Sky Tower Otel","Tuana Beach Otel","Turkuaz Beach Otel","Yeni Çınar Otel","Yılmaz Otel"]
    
    var hotelsCoordinatesArray = ["41.089517,31.129258", "41.089047,31.118551", "41.085229,31.104330", "41.079507,31.076183", "41.089816,31.144773", "41.084289,31.103666", "41.082833,31.176630", "41.089593,31.129976", "41.088688,31.117217", "41.086617,31.103721"," 41.090080,31.139896", "41.085036,31.103419", "41.089546,31.129139"]
    
    //TATİL KÖYLERİ
    var resortNameArray = ["Al-Sa Tatil Köyü"]
    
    var resortCoordinatesArray = ["41.071827,30.999377"]
    
    //PANSİYONLAR
    var hostelsNameArray = ["Akçakoca Öğretmenevi","Bahar Pansiyon","Beş Yıldız Apart Pansiyon","Çamlık Pansiyon","Can Apart","Demir Pansiyon","Deniz Feneri Pansiyon","Diapolis Apartları","Doğuş Pansiyon","Emel Pansiyon","Hostel Mimoza","Kar Pansiyon","Mutlu Pansiyon","Name Pansiyon","Pandul Pansiyon","Poyraz Pansiyon","Prestij Apart","Sağlam Pansiyon","Sahil Pansiyon","Şahin Pansiyon","Tunç Pansiyon"]
    
    var hostelsCoordinatesArray = ["41.087299,31.106872", "41.089496,31.129255", "41.083940,31.172353", "41.085942,31.120374", "41.086761,31.099622", "41.072198,31.010236", "41.089987,31.137975", "41.084886,31.102992", "41.089783,31.139535", "41.089574,31.130848", "41.087099,31.111275", "41.072520,31.000175", "41.089793,31.129434", "41.087682,31.140651", "41.089964,31.138982", "41.089944,31.138724", "41.089138,31.130336", "41.090898,31.151096", "41.072970,31.016596", "41.089299,31.123000", "41.095607,31.187216"]
    
    //RESTORANLAR
    var restaurantNameArray = ["Akbey Restaurant","Bahçe 2 Cafe Restaurant","Çapa Restaurant","Çardak Restaurant","Efran Restaurant","Hamsi Balık Restaurant","İskele Balık Restaurant","Kamelya Restaurant","Piri Reis Restaurant","Turkuaz Restaurant","Barınak Balık Lokantası","Bolu Kardeşler Lokantası","Cafe Mutfak","Çetinkaya Lokantası","Dalyan Balık Lokantası","Gaziantep Pide Salonu","Gözde Köfte Salonu","Hanımeli Mutfağı","Hülyam Lokantası","Kantin Pide Salonu","Mengen Sofrası","Mustafanın Yeri","Ömür Lokantası","Özkardeşler Lokantası","Yakamoz Balık Lokantası"]
    
    var restaurantCoordinatesArray = ["41.089872,31.128524", "41.090010,31.131175", "41.089942,31.130487", "41.091882,31.187262", "41.088776,31.120186", "41.089318,31.119827", "41.089320,31.121951", "41.089860,31.126970", "-", "41.090218,31.139638", "41.089259,31.122736", "41.088762,31.122319", "41.089200,31.122627", "41.089832,31.137964", "41.089327,31.123338", "41.088533,31.121236", "41.088553,31.123695", "41.083981,31.173493", "41.088851,31.123609", "41.089269,31.123609", "41.089807,31.131830", "41.089936,31.136403", "41.087732,31.124212", "41.084546,31.175036", "41.089236,31.119982"]
    
    //CAFE - BARLAR
    var cafeBarNameArray = ["Cafe Altyazı", "Bahçe Cafe", "Cadde Cafe", "Çınar Cafe", "Değirmen Cafe", "Erdeniz Cafe", "Karamel Cafe", "Kardelen Cafe", "Köşem Cafe", "Mola Cafe Restaurant", "Rocca Cafe", "Şahane Cafe", "Turan Pasta Cafe", "Tutaste Cafe", "Undankale Bakery", "1010 Cafe Bistro", "Çakıl Disco Bar", "Çatı Cafe Pub", "Great Bar", "Horon Bar", "Marina Bar"]
    
    var cafeBarCoordinateArray = ["41.088241,31.112087", "41.090285,31.134667", "41.089579,31.130096", "41.089579,31.129610", "41.086975,31.115182", "41.089863,31.138296", "41.089614,31.130963", "41.089917,31.132456", "41.089536,31.129488", "41.085697,31.177855", "41.089688,31.131486", "41.088110,31.114675", "41.087126,31.124169", "41.091004,31.148496", "41.090097,31.138236", "41.089582,31.130116", "41.072800,31.015566", "41.089596,31.128833", "41.088701,31.121296", "41.089168,31.122365", "41.089245,31.121996"]
    
    //PLAJLAR
    var beachNameArray = ["Akevler Mevkii Kemos Plajı", "Akkaya Plajı", "Beyhanlı Plajı", "Çuhallı Plajı", "Değirmenağzı Plajı", "Edilli Ağzı Plajı", "Kadınlar Plajı", "Kalkın Plajı", "Karaburun Plajı", "Kale Plajı", "Melenağzı Plajı", "Paşalar Plajı", "Tahirli Plajı"]
    
    var beachCoordinatesArray = ["41.094706,31.187672", "41.103628,31.248532", "41.100477,31.230883", "41.090524,31.140557", "41.087249,31.103476", "41.077665,31.068961", "41.086407,31.094109", "41.075872,31.043537", "41.072803,31.013496", "41.085346,31.091664", "41.072072,30.998275", "41.075909,31.025065", "41.077334,31.065371"]
    
    //TARİHİ MEKANLAR
    var historicalPlaceNameArray = ["Hemşin Camii","Orhan Gazi Camii"]
    
    var historicalPlaceCoordinatesArray = ["41.025481,31.023792", "-"]
    
    //GÖRMEDEN GEÇME
    var mustSeeNameArray = ["Ceneviz Kalesi", "Kurugöl Kanyonu ve Şelalesi", "Mehmet Arif Bey Köşkü", "Özkök Kültür ve Sanat Evi", "Sarıyayla Şelalesi", "Fakıllı Mağarası"]
    
    var mustSeeCoordinatesArray = ["41.085789,31.092955", "-", "41.087451,31.135020", "41.089729,31.136840", "-", "-"]
    
    //HASTANELER
    var hospitalNameArray = ["Akçakoca Devlet Hastanesi", "1 Nolu Sağlık Ocağı", "2 Nolu Sağlık Ocağı"]
    
    var hospitalCoordinatesArray = ["41.086975,31.115182", "41.088022,31.126828", "41.086991,31.142376"]
    
    //ECZANELER
    var pharmacyNameArray = ["Akçakoca Eczanesi", "Büyük Eczane", "Çuhallı Eczanesi", "Hayat Eczanesi", "Karadeniz Eczanesi", "Meltem Eczanesi", "Nimet Eczanesi", "Seçkin Eczanesi"]
    
    var pharmacyCoordinatesArray = ["41.086620,31.116089", "41.087401,31.125706", "41.088021,31.140712", "41.088402,31.123479", "41.086555,31.116034", "41.087567,31.142145", "41.088143,31.122472", "41.087669,31.117297"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.dataSource = self;
        self.picker.delegate = self
        self.title = "Harita"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
        mapView.removeAnnotations( annotationsToRemove )
        
        for(var i = 0; i<hotelsNamesArray.count; i++){
            let coordinateArray = hotelsCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
            let lat = coordinateArray[0]
            let lng = coordinateArray[1]
            let name:String! = hotelsNamesArray[i]
            prepareMap(lat, lng: lng, name: name)
        }

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataArray.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)//hotels
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<hotelsNamesArray.count; i++){
                let coordinateArray = hotelsCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = hotelsNamesArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 1)//resorts
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<resortNameArray.count; i++){
                let coordinateArray = resortCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = resortNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 2)//hostels
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<hostelsNameArray.count; i++){
                let coordinateArray = hostelsCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = hostelsNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 3)//restaurants
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<restaurantNameArray.count; i++){
                let coordinateArray = restaurantCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = restaurantNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 4)//cafe-bars
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<cafeBarNameArray.count; i++){
                let coordinateArray = cafeBarCoordinateArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = cafeBarNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 5)//beaches
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<beachNameArray.count; i++){
                let coordinateArray = beachCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = beachNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 6)//historical places
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<historicalPlaceNameArray.count; i++){
                let coordinateArray = historicalPlaceCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = historicalPlaceNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }

        }
        else if(row == 7)//must see
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<mustSeeNameArray.count; i++){
                let coordinateArray = mustSeeCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = mustSeeNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }

        }
        else if(row == 8)//hospitals
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<hospitalNameArray.count; i++){
                let coordinateArray = hospitalCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = hospitalNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }
        }
        else if(row == 9)//pharmacies
        {
            let annotationsToRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            mapView.removeAnnotations( annotationsToRemove )
            
            for(var i = 0; i<pharmacyNameArray.count; i++){
                let coordinateArray = pharmacyCoordinatesArray[i].characters.split{$0 == ","}.map(String.init)
                let lat = coordinateArray[0]
                let lng = coordinateArray[1]
                let name:String! = pharmacyNameArray[i]
                prepareMap(lat, lng: lng, name: name)
            }

        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func prepareMap(lat:String, lng:String, name:String){
        let MomentaryLatitude = (lat as NSString).doubleValue
        let MomentaryLongitude = (lng as NSString).doubleValue
        
        let location = CLLocationCoordinate2D(
            latitude: MomentaryLatitude,
            longitude: MomentaryLongitude
        )
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = name
        
        mapView.addAnnotation(annotation)
        mapView.setRegion(region, animated: true)
    }
    
    func openMapForPlace(lat: CLLocationDegrees, lng: CLLocationDegrees, name: String) {
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(lat, lng)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "\(name)"
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
            let lat = annotationView.annotation?.coordinate.latitude
            let lng = annotationView.annotation?.coordinate.longitude
            let name:String = ((annotationView.annotation?.title)!)!
            openMapForPlace(lat!, lng: lng!, name: name)
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
