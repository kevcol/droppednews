//
//  ContentItem.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/30/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

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
    
    
    
    init(type: Int, mainImage: UIImage, headline: String!, timestamp: String!, byline: String!, body: String!, audioName: String?, videoName: String?) {
        _type = type
        _mainImage = mainImage
        _headline = headline
        _timestamp = timestamp
        _byline = byline
        _body = body
        _audioName = audioName
        _videoName = videoName
    }
}
