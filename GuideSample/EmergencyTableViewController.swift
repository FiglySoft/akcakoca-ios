//
//  EmergencyTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class EmergencyTableViewController: UITableViewController {
    
    var emergencyItemNames = ["1 Nolu Sağlık Ocağı","2 Nolu Sağlık Ocağı","Akçakoca Belediyesi","Akçakoca Devlet Hastanesi","Akçakoca Kaymakamlığı","Akçakoca İtfaiye","Akçakoca Jandarma Komutanlığı","Akçakoca Emniyet Müdürlüğü","Akçakoca Veteriner Kliniği"]
    
    var emergencyItemPhones = ["03806114171", "03806116914", "03806114110", "03806114005", "03806114060", "03806114969", "03806189300", "03806114551", "05327135685"]
    
    var emergencyItemImages = ["akcakoca_first_health.jpg", "akcakoca_second_health.jpg", "akcakoca_belediye.jpg", "akcakoca_hospital.jpg", "akcakoca_kaymakamligi.jpg", "akcakoca_itfaiye.jpg", "akcakoca_jandarma.jpg", "akcakoca_emniyet.jpg", "akcakoca_veteriner.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Acil Numaralar"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return emergencyItemNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EmergencyCell", forIndexPath: indexPath) as! EmergencyTableViewCell

        cell.emergencyItemName.text = emergencyItemNames[indexPath.row]
        cell.emergencyItemPhone.text = emergencyItemPhones[indexPath.row]
        cell.emergencyItemImage.image = UIImage(named: emergencyItemImages[indexPath.row])
        cell.emergencyItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 1){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 2){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 3){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 4){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 5){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 6){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 7){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 8){
            createCallWarning(emergencyItemNames[indexPath.row], phone: emergencyItemPhones[indexPath.row])
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    func createCallWarning(name: String, phone: String) {
        let callAlert = UIAlertController(title: "Arama", message: phone+" "+name+": Aramak istiyor musunuz?", preferredStyle: UIAlertControllerStyle.Alert)
        
        callAlert.addAction(UIAlertAction(title: "Ara", style: .Default, handler: { (action: UIAlertAction!) in
            if let url = NSURL(string: "tel://\(phone)") {
                UIApplication.sharedApplication().openURL(url)
            }
        }))
        
        callAlert.addAction(UIAlertAction(title: "Vazgeç", style: .Default, handler: { (action: UIAlertAction!) in
            
        }))
        
        presentViewController(callAlert, animated: true, completion: nil)
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
