//
//  RestaurantsTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class RestaurantsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var restaurantItemImage: UIImageView!
    
    @IBOutlet weak var restaurantItemName: UILabel!
    
    @IBOutlet weak var restaurantItemPhone: UILabel!
    
    @IBOutlet weak var restaurantItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
