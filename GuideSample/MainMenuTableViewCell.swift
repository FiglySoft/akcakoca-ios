//
//  MainMenuTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class MainMenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuItemText: UILabel!
    
    @IBOutlet weak var menuItemImage: UIImageView!
    
    @IBOutlet weak var menuItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
