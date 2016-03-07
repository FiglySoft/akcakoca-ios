//
//  HotelsTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 03/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HotelsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hotelsItemImage: UIImageView!
    
    @IBOutlet weak var hotelsItemName: UILabel!
    
    @IBOutlet weak var hotelsItemPhone: UILabel!

    @IBOutlet weak var hotelsItemArrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
