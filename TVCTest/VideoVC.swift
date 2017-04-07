//
//  VideoViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/1/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class VideoVC: UIViewController, UIWebViewDelegate {
    
  @IBOutlet weak var shade: UIView!
  @IBOutlet weak var spin: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
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
      
        webView.delegate = self
        
        headline.text = contentItem.headline
        timestamp.text = contentItem.timestamp
        body.text = contentItem.body
        videoCode = contentItem.videoName
       

        // Do any additional setup after loading the view.
        //getVideo(videoCode: "eQLzrlMeySU")
        loadYouTube(videoID: "eQLzrlMeySU")
    }
  
  
  func loadYouTube(videoID: String) {
    guard
      let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)?rel=0&amp;showinfo=0")
      else {
      return
    }
    
    webView.loadRequest(URLRequest(url: youtubeURL))
  }

    
   func getVideo(videoCode:String) {
    
    let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
    webView.loadRequest(URLRequest(url: url!))
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func webViewDidStartLoad(_ webView: UIWebView) {
   
  }
  
  func webViewDidFinishLoad(_ webView: UIWebView) {
    shade.alpha = 0.0
    spin.alpha = 0.0
    print("LOADSSSSSSS")
  }

   
}
