//
//  HostelsTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 04/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HostelsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hostelsItemImage: UIImageView!
    
    @IBOutlet weak var hostelsItemName: UILabel!
    
    @IBOutlet weak var hostelsItemPhone: UILabel!

    @IBOutlet weak var hostelsItemArrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
