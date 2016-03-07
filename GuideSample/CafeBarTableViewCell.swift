//
//  CafeBarTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class CafeBarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cafeBarItemImage: UIImageView!
    
    @IBOutlet weak var cafeBarItemName: UILabel!
    
    @IBOutlet weak var cafeBarItemPhone: UILabel!
    
    @IBOutlet weak var cafeBarItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
