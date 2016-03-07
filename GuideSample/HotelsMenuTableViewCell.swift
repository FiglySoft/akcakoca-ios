//
//  HotelsMenuTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 03/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HotelsMenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hotelsMenuItemImage: UIImageView!
    
    @IBOutlet weak var hotelsMenuItemName: UILabel!
    
    @IBOutlet weak var hotelsMenuItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
