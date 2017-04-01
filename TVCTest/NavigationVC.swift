//
//  NavigationVC.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/31/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class NavigationVC: UINavigationController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = UIColor(red:0.00, green:0.35, blue:0.56, alpha:1.0)
        self.navigationBar.tintColor = UIColor.white

        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
