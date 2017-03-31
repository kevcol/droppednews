//
//  NewTableViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 2/27/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit

struct cellData {
    let cell: Int!
    let text: String!
    let image: UIImage!
}

class HomeViewController: UITableViewController {
    
    var myArray = [cellData]()
    
//    var items: [ContentItem]
//    
//    required init?(coder aDecoder: NSCoder) {
//        items = [ContentItem]()
//        let row0item = ContentItem()
//        row0item.headline = "This is a lovely headline I wrote"
//        row0item.imageName = "drupalconDublinStageJosefJerabekFlickr50.jpg"
//        items.append(row0item)
//        
//        let row1item = ContentItem()
//        row1item.headline = "This is a crappy headline I wrote"
//        row1item.imageName = "drupalconDublinAudienceJosefJerabekFlickr50.jpg"
//        items.append(row1item)
//        
//        let row2item = ContentItem()
//        row2item.headline = "This is a crappy headline I wrote"
//        row2item.imageName = "drupalconDublinAudienceJosefJerabekFlickr50.jpg"
//        items.append(row2item)
//        
//        let row3item = ContentItem()
//        row3item.headline = "This is a crappy headline I wrote"
//        row3item.imageName = "drupalconDublinAudienceJosefJerabekFlickr50.jpg"
//        items.append(row3item)
//        
//        super.init(coder: aDecoder)
//    }
//
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myArray = [cellData(cell: 1, text: "With Backup and Migrate you can dump some or all", image: #imageLiteral(resourceName: "drupalcon1")),
                   cellData(cell: 1, text: "Admin Toolbar intends to improve the default Drupal Toolbar", image: #imageLiteral(resourceName: "drupalcon2")),
                   cellData(cell: 1, text: "Linkit provides an easy interface for internal and external linking", image: #imageLiteral(resourceName: "whiteHouse"))]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        
        //if myArray[indexPath.row].cell == 1 { <-- can have multiple nibs if you want
            
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.mainImageView.image = myArray[indexPath.row].image
            cell.mainLabel.text = myArray[indexPath.row].text
       

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 265
        
    }
    

    
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
