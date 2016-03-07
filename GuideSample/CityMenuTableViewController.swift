//
//  CityMenuTableViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class CityMenuTableViewController: UITableViewController {
    
    var cityMenuItemsArray = ["Oteller","Restoranlar","Cafe - Barlar","Plajlar"]
    var cityMenuImagesArray = ["hotel_icon.png","restaurant_icon.png","cafe_icon.png","beach_icon.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Şehir"
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
        return cityMenuItemsArray.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            performSegueWithIdentifier("gotoHotelsMenu", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 1){
            performSegueWithIdentifier("gotoRestaurants", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 2){
            performSegueWithIdentifier("gotoCafeBars", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else if(indexPath.row == 3){
            performSegueWithIdentifier("gotoBeaches", sender: self)
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CityMenuCell", forIndexPath: indexPath) as! CityMenuTableViewCell

        cell.cityMenuItemName.text = cityMenuItemsArray[indexPath.row]
        cell.cityMenuItemImage.image = UIImage(named: cityMenuImagesArray[indexPath.row])
        cell.cityMenuItemArrow.image = UIImage(named: "right_arrow.png")

        return cell
    }
}
