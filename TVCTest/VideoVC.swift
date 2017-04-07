/*
 VideoViewVC.swift
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
