//
//  MustSeeTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class MustSeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mustSeeItemImage: UIImageView!
    
    @IBOutlet weak var mustSeeItemName: UILabel!
    
    @IBOutlet weak var mustSeeItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
