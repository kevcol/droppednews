/*
 NavigationVC.swift
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

class NavigationVC: UINavigationController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = UIColor(red:0.00, green:0.35, blue:0.56, alpha:1.0)
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.barStyle = UIBarStyle.blackOpaque
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
