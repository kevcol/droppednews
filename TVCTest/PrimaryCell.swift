/*
 PrimaryCell.swift
 DroppedNews: A Drupal-powered iOS News App
 
 Copyright 2017, Kevin Colligan
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

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
