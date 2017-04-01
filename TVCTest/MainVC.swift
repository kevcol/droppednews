//
//  MainVC.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/30/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contentItems = [ContentItem]()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // temporary content data; will be replaced by feeds
       
        
        let c1 = ContentItem(type: 1,
                             mainImage: #imageLiteral(resourceName: "whiteHouse"),
                             headline: "This is a nice radio. Play some Beastie Boys",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Larry / DroppedNews",
                             body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                             audioName: "",
                             videoName: ""
                             )
        
        let c2 = ContentItem(type: 2,
                             mainImage: #imageLiteral(resourceName: "drupalcon1"),
                             headline: "This here is a video. Watch it now",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Larry / DroppedNews",
                             body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                             audioName: "",
                             videoName: "")
        
        let c3 = ContentItem(type: 3,
                             mainImage: #imageLiteral(resourceName: "drupalcon2"),
                             headline: "Linkit provides an easy interface for internal and external linking",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Larry / DroppedNews",
                             body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                             audioName: "",
                             videoName: "eQLzrlMeySU")
        
        let c4 = ContentItem(type: 1,
                             mainImage: #imageLiteral(resourceName: "drupalcon2"),
                             headline: "Scooby dooby doo where are you? Someone something somehow",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Larry / DroppedNews",
                             body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                             audioName: "",
                             videoName: "")
        
        let c5 = ContentItem(type: 1,
                             mainImage: #imageLiteral(resourceName: "drupalcon2"),
                             headline: "Sugar honey ice tea this is just a dummy headline",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Larry / DroppedNews",
                             body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                             audioName: "",
                             videoName: "")
        
        contentItems.append(c1)
        contentItems.append(c2)
        contentItems.append(c3)
        contentItems.append(c4)
        contentItems.append(c5)
        
        
        
                
        
        tableView.delegate = self
        tableView.dataSource = self
        }

    
    // MARK: - Table view code
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PrimaryCell", for: indexPath) as? PrimaryCell {
            
            let contentItem = contentItems[indexPath.row]
            let type = contentItems[indexPath.row].type
            
            if type == 1 {
                
            } else if type == 2 {
                
            } else if type == 3 {
                
            }
            
            
            cell.updateUI(contentItem: contentItem, type: type)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let contentItem = contentItems[indexPath.row]
        
        if contentItem.type == 1 {
            performSegue(withIdentifier: "ArticleVC", sender: contentItem)
            
        } else if contentItem.type == 2 {
            print("WHAT THE DEUCE?")
            performSegue(withIdentifier: "VideoVC", sender: contentItem)
            
        } else if contentItem.type == 3 {
            performSegue(withIdentifier: "AudioVC", sender: contentItem)
            print("LOAD AUDIO")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ArticleVC {
            if let content = sender as? ContentItem {
                destination.contentItem = content
            }
        } else if let destination = segue.destination as? VideoVC {
            if let content = sender as? ContentItem {
                destination.contentItem = content
            }
        } else if let destination = segue.destination as? AudioVC {
            if let content = sender as? ContentItem {
                destination.contentItem = content
            }
        }


    }

}
