//
//  GuideMainMenuTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class GuideMainMenuTableViewController: UITableViewController {
    
   var citiesArray = ["Şehir","Tarihi Mekanlar","Görmeden Geçme","Sağlık","Ulaşım","Acil Numaralar","Harita","Hakkımızda"]
    
    var imagesArray = ["city_icon.png","historical_icon.png","must_see_icon.png","health_icon.png","transportation_icon.png","emergency_icon.png","map_icon.png","about_us_icon.png"]
    
    var tableDataHeader = ["right_arrow.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Akçakoca"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        let frame = CGRectMake(0, 0, self.view.frame.size.width, 200)
        let headerImageView = UIImageView(frame: frame)
        let image: UIImage = UIImage(named: "akcakoca_banner.jpg")!
        headerImageView.image = image
        tableView.tableHeaderView = headerImageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return citiesArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MainMenuTableViewCell

        cell.menuItemText.text = citiesArray[indexPath.row]
        cell.menuItemImage.image = UIImage(named: imagesArray[indexPath.row])
        cell.menuItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }

    
    // MARK: - Navigation
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            performSegueWithIdentifier("gotoCityMenu", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 1){
            performSegueWithIdentifier("gotoHistoricalPlaces", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 2){
            performSegueWithIdentifier("gotoMustSee", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 3){
            performSegueWithIdentifier("gotoHealth", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 4){
            performSegueWithIdentifier("gotoTransportation", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 5){
            performSegueWithIdentifier("gotoEmergency", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 6){
            performSegueWithIdentifier("gotoMap", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 7){
            performSegueWithIdentifier("gotoAboutUs", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
}
