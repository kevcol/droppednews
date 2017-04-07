/*
 ContentItem.Swift
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

import Foundation
import UIKit

class ContentItem {
    
    private var _mainImage: UIImage!
    private var _headline: String!
    private var _timestamp: String!
    private var _byline: String!
    private var _body: String!
    private var _type: Int!
    private var _audioName: String!
    private var _videoName: String!
    private var _photoCaption: String!
    private var _photoCredit: String!

  
    var mainImage: UIImage {
        return _mainImage
    }
    
    var headline: String {
        return _headline
    }
    
    var timestamp: String {
        return _timestamp
    }
    
    var byline: String {
        return _byline
    }
    
    var body: String {
        return _body
    }
    
    var type: Int {
        return _type
    }
    
    var audioName: String {
        return _audioName
    }
        
    var videoName: String {
        return _videoName
    }
  
    var photoCredit: String {
        return _photoCredit
    }
  
    var photoCaption: String {
        return _photoCaption
    }
  
  
  
  init(type: Int, mainImage: UIImage, headline: String!, timestamp: String!, byline: String!, body: String!, audioName: String?, videoName: String?, photoCredit:String?, photoCaption: String?) {
        _type = type
        _mainImage = mainImage
        _headline = headline
        _timestamp = timestamp
        _byline = byline
        _body = body
        _audioName = audioName
        _videoName = videoName
        _photoCaption = photoCaption
        _photoCredit  = photoCredit
    }
}
