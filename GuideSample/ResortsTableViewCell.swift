//
//  ResortsTableViewCell.swift
//  Akçakoca Rehberi
//
//  Created by Servet Can Asutay on 11/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class ResortsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var resortItemImage: UIImageView!
    
    @IBOutlet weak var resortItemName: UILabel!
    
    @IBOutlet weak var resortItemPhone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
