//
//  HospitalTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 07/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class HospitalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hospitalName: UILabel!
    
    @IBOutlet weak var hospitalPhone: UILabel!
    
    @IBOutlet weak var hospitalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
