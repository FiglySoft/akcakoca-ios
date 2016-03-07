//
//  HistoricalPlacesTableViewCell.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 30/12/15.
//  Copyright © 2015 Servet Can Asutay. All rights reserved.
//

import UIKit

class HistoricalPlacesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var historicalPlaceItemImage: UIImageView!

    
    @IBOutlet weak var historicalPlaceItemName: UILabel!
    
    
    @IBOutlet weak var historicalPlaceItemArrow: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
