//
//  HealthTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class HealthTableViewCell: UITableViewCell {

    @IBOutlet weak var healthItemImage: UIImageView!
    
    @IBOutlet weak var healthItemName: UILabel!
    
    @IBOutlet weak var healthItemArrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
