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
    @IBOutlet weak var contentType: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(contentItem: ContentItem, type: Int) {
        self.backgroundColor = UIColor(red:0.98, green:0.98, blue:0.99, alpha:1.0)
        headline.textColor = UIColor(red:0.00, green:0.35, blue:0.56, alpha:1.0)

        headline.text = contentItem.headline
        mainImage.image = contentItem.mainImage
        
        if type == 1 {
            
            contentType.image = #imageLiteral(resourceName: "newspaper-off")
            
            
        } else if type == 2 {
            
            contentType.image = #imageLiteral(resourceName: "tv-off")
            
        } else if type == 3 {
            
            contentType.image = #imageLiteral(resourceName: "headphones-off")
            
        } else {
            
            contentType.image = nil
        }
        
        
    }
    
    
        
}
