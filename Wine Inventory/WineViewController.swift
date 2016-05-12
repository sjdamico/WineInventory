//
//  WineViewController.swift
//  Wine Inventory
//
//  Created by Steve D'Amico on 4/23/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//
/* This View Controller displays all the wines of the selected category element.
   When the user selects a wine, the user is directed to the info View Controller displaying the specifics of the selected wine. */

import UIKit

class WineViewController: UITableViewController {

    // Array containing selected category elements
    var availableWines: [String] = []
    
    // Passed object from CategoryViewController
    var currentWine: [String] = []
    
    // Listed wine array includes wine name and wine id
    var listedWines: [String] = []
    
    // Passed object from CategoryViewController
    var emptyWine: [String] = []
    
    // Cell identifier in Main.storyboard
    private static let cellIdentifier = "SelectedWines"

    override func viewWillAppear(animated: Bool) {
        animated
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Switch statement returns category array that matches the selected category
        switch currentWine[1] {
            case "Type":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Types == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Vendor":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Vendors == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Name":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Names == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Country":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Countries == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Region":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Regions == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Rack":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Rack == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            case "Position":
                for var l = 0; l < ourCellar.count; ++l {
                    if ourCellar[l].Position == currentWine[0] {
                        availableWines.append(ourCellar[l].wineID)
                    }
                }
            default:
                availableWines = emptyWine
        }
        availableWines.sortInPlace(<)
        
    // Title of current selection
    self.title = "Wine " + currentWine[1] + " is " + currentWine[0]
    }
    
    // Identifies wines in selected category elements
    func WinesForDisplay(atIndexPath indexPath: NSIndexPath) -> String {
        let selectedWines = availableWines[indexPath.row]
        return selectedWines
    }
    
    // Sets the number of sections to 1
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // Sets the number of rows based on the number of categories
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return availableWines.count
    }
    
    // Displays selected category's elements across table view cells and sets font size
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(WineViewController.cellIdentifier, forIndexPath: indexPath)
        
        // Display elements of selected category
        cell.textLabel?.text = availableWines[indexPath.row]
        cell.textLabel?.font = UIFont .boldSystemFontOfSize(18)
        return cell
    }
    
    // MARK: - Navigation setup to next view controller scene
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Identifies destination view controller
        let listVC = segue.destinationViewController as! InfoViewController
        
        // Identifes selected cell and sets value to passed object
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let wineInfo = availableWines[indexPath.row]
            
            // Passed object
            listVC.wineChoice = wineInfo
        }
    }
}

