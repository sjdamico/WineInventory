//
//  RootViewController.swift
//  Wine Inventory
//
//  Created by Steve D'Amico on 3/26/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//
/* This View Controller displays the wine categories available. User selects and the next view displays all the elements of a selected category. */

import UIKit

class RootViewController: UITableViewController {



    // Contains a list of the categories to be displayed
    private var categoryNames: [String]!
    
    // Selected cell
    private var categoryName = ""
    
    // Cell identifier in Main.storyboard
    private static let categoryCell = "WineCategory"

    // Reloads table view when ever there is a change in views
    override func viewWillAppear(animated: Bool) {
        animated
        tableView.reloadData()
    }

    // Provides names for category listing
    override func viewDidLoad() {
        super.viewDidLoad()
        // First version will use arrays for client view of operation versus function
        categoryNames = ["Type", "Vendor", "Name", "Country", "Region", "Rack", "Position"]
    }

    // Sets the number of sections to 1
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // Sets the number of rows based on the number of categories
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryNames.count
    }
    
    // Displays category names across table view cells and sets font size
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(RootViewController.categoryCell, forIndexPath: indexPath)
        
        // Display elements of category listing
        cell.textLabel?.text = categoryNames[indexPath.row]
        cell.textLabel?.font = UIFont .boldSystemFontOfSize(18)
        return cell
    }
    
    // MARK: - Navigation setup to next view controller scene
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Identifies destination view controller
        let listVC = segue.destinationViewController as! CategoryViewController
        
        // Identifes selected cell and sets value to passed object
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
            // Passed object
            let selectedCategory = categoryNames[indexPath.row]
            listVC.currentCategory = selectedCategory
        }
    }
}
