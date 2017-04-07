//
//  ArticleVC.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/31/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class ArticleVC: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var byline: UILabel!
    @IBOutlet weak var body: UITextView!
    
    private var _contentItem: ContentItem!
    
    var contentItem: ContentItem {
        
        get {
            return _contentItem
            
        } set {
            _contentItem = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.hidesBottomBarWhenPushed = true
        
        mainImage.image = contentItem.mainImage
        headline.text = contentItem.headline
        timestamp.text = contentItem.timestamp
        byline.text = contentItem.byline
        body.text = contentItem.body

    }



}
