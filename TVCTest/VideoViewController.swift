//
//  VideoViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/1/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var ytWebView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getVideo(videoCode: "eQLzrlMeySU")
    }
    
   func getVideo(videoCode:String) {
    
    let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
    ytWebView.loadRequest(URLRequest(url: url!))
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
