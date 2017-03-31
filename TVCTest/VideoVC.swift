//
//  VideoViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/1/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var ytWebView: UIWebView!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var body: UITextView!
    
    var videoCode: String!
    
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
        
        headline.text = contentItem.headline
        timestamp.text = contentItem.timestamp
        body.text = contentItem.body
        videoCode = contentItem.videoName
        
       

        // Do any additional setup after loading the view.
        getVideo(videoCode: videoCode)
    }
    
    

    
   func getVideo(videoCode:String) {
    
    let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
    ytWebView.loadRequest(URLRequest(url: url!))
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
