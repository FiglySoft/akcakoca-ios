//
//  BeachTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 05/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class BeachTableViewCell: UITableViewCell {
    
    @IBOutlet weak var beachItemImage: UIImageView!
    
    @IBOutlet weak var beachItemName: UILabel!
    
    @IBOutlet weak var beachItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
