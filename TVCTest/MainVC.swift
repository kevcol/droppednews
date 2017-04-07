/*
 MainVC.swift
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

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contentItems = [ContentItem]()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // temporary content data; will be replaced by Drupal data feeds
        let c1 = ContentItem(type: 1,
                             mainImage: #imageLiteral(resourceName: "drupalconParis"),
                             headline: "Use the power of Drupal to elevate your iOS apps",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Nathan Node / DroppedNews",
                             body: "Lorem ipsum bore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                             audioName: "",
                             videoName: "",
                             photoCredit: "Andrey Pshenichny/Flickr",
                             photoCaption: "DrupalCon Paris 2009"
                             )
        
        let c2 = ContentItem(type: 2,
                             mainImage: #imageLiteral(resourceName: "drupalcon1"),
                             headline: "Watch Dries Buytaert address DrupalCon Dublin 2016",
                             timestamp: "March 30, 2017 -- 7:00 am PDT",
                             byline: "By Erin Entity / DroppedNews",
                             body: "We hope you enjoyed your DrupalCon experience in Dublin.  We had an incredible week with the community full of sharing, sessions, and sprinting!",
                             audioName: "",
                             videoName: "",
                             photoCredit: "",
                             photoCaption: "")
        
      let c3 = ContentItem(type: 1,
                           mainImage: #imageLiteral(resourceName: "drupalConAmsterdam"),
                           headline: "Young talent shines at DrupalCon Amsterdam",
                           timestamp: "March 30, 2017 -- 7:00 am PDT",
                           byline: "By Thomas Taxonomy / DroppedNews",
                           body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                           audioName: "",
                           videoName: "",
                           photoCredit: "",
                           photoCaption: "")
      
      let c4 =  ContentItem(type: 3,
                            mainImage: #imageLiteral(resourceName: "drupalConPortland"),
                            headline: "We liked DrupalCon Portland before it was cool",
                            timestamp: "March 30, 2017 -- 7:00 am PDT",
                            byline: "",
                            body: "Hipsters met sprinters in the city keeping the spirit of the 90s alive",
                            audioName: "",
                            videoName: "eQLzrlMeySU",
                            photoCredit: "",
                            photoCaption: "")

        
      let c5 = ContentItem(type: 1,
                           mainImage: #imageLiteral(resourceName: "drupalConBarcelona"),
                           headline: "Something or other about DrupalCon Barcelona",
                           timestamp: "March 30, 2017 -- 7:00 am PDT",
                           byline: "By Corrine Content-Type / DroppedNews",
                           body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                           audioName: "",
                           videoName: "",
                           photoCredit: "Photo by Trav Williams, Broken Banjo Photography via Flickr",
                           photoCaption: "DrupalCon 2013, Portland")
      
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
          
            performSegue(withIdentifier: "VideoVC", sender: contentItem)
            
        } else if contentItem.type == 3 {
            performSegue(withIdentifier: "AudioVC", sender: contentItem)
           
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
