//
//  EmergencyTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 01/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class EmergencyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var emergencyItemImage: UIImageView!
    
    @IBOutlet weak var emergencyItemName: UILabel!
    
    @IBOutlet weak var emergencyItemPhone: UILabel!
    
    @IBOutlet weak var emergencyItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
