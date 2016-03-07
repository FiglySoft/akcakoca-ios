//
//  CityMenuTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class CityMenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityMenuItemImage: UIImageView!
    
    @IBOutlet weak var cityMenuItemName: UILabel!
    
    @IBOutlet weak var cityMenuItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
