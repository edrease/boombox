//
//  BrowseSpacesTableViewCell.swift
//  BoomBox
//
//  Created by Matthew McClure on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit

class BrowseSpacesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var spaceImageView: UIImageView!
    @IBOutlet weak var spacePriceLabel: UILabel!
    
    @IBOutlet weak var spaceTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
