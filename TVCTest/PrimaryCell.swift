//
//  PrimaryCellTableViewCell.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/30/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class PrimaryCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var headline: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(contentItem: ContentItem) {
        headline.text = contentItem.headline
        mainImage.image = contentItem.mainImage
        // TODO: Set image
    }

}
