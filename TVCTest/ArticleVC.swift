/*
 ArticleVC.swift
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
