//
//  PharmacyTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 07/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class PharmacyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pharmacyName: UILabel!
    
    @IBOutlet weak var pharmacyPhone: UILabel!

    @IBOutlet weak var pharmacyImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
