//
//  CategoryViewController.swift
//  Wine Inventory
//
//  Created by Steve D'Amico on 3/30/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//
/* This View Controller displays all the elements of a selected category.
   Selecting an element takes the user to a view displaying all the available wines for that element. */

import UIKit

class CategoryViewController: UITableViewController {
    
    // inventoryArray() is the function the WinList array is built, ourCellar is the instance generated
    var ourCellular = inventoryArray()
    
    // Array containing selected category elements
    var selectedCategories: [String] = []

    // Array containing sorted selected category elements
    var wineCategory: [String] = []

    // Passed object from RootViewController
    var currentCategory: String = ""
    
    // Default response for switch statement
    var emptyCategory: [String] = []

    
    // Cell identifier in Main.storyboard
    private static let cellIdentifier = "SelectedCategory"
    
    override func viewWillAppear(animated: Bool) {
        animated
        tableView.reloadData()
    }
    
    func eliminateDuplicate(array: [String]) -> [String] {
        var input = Set<String>()
        var output: [String] = []
        for element in array {
            if input.contains(element) {
                // Do nothing
            } else {
               // Add value to the set
                input.insert(element)
                // Append the value
                output.append(element)
            }
        }
        return output
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Title of current selection
        self.title = "Wine " + currentCategory
        
        // Switch statement returns category array that matches the selected category
        switch currentCategory {
            case "Type":
                for var j = 0; j < arraySize; ++j {
                    selectedCategories.append(ourCellar[j].Types)
                }
            case "Vendor":
                for var j = 0; j < arraySize; ++j {
                    selectedCategories.append(ourCellar[j].Vendors)
                }
            case "Name":
                for var j = 0; j < arraySize; ++j {
                    selectedCategories.append(ourCellar[j].Names)
            }
            case "Country":
                for var j = 0; j < arraySize; ++j {
                    selectedCategories.append(ourCellar[j].Countries)
            }
            case "Region":
            for var j = 0; j < arraySize; ++j {
                selectedCategories.append(ourCellar[j].Regions)
            }
            case "Rack":
            for var j = 0; j < arraySize; ++j {
                selectedCategories.append(ourCellar[j].Rack)
            }
            case "Position":
                for var j = 0; j < arraySize; ++j {
                    selectedCategories.append(ourCellar[j].Position)
            }
            default:
                selectedCategories = emptyCategory
        }
        selectedCategories.sortInPlace(<)
        wineCategory = eliminateDuplicate(selectedCategories)
    }

    // Sets the number of sections to 1
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    // Sets the number of rows based on the number of categories
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineCategory.count
    }

    // Displays selected category's elements across table view cells and sets font size    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CategoryViewController.cellIdentifier, forIndexPath: indexPath)
        
        // Display elements of selected category
        cell.textLabel?.text = wineCategory[indexPath.row]
        cell.textLabel?.font = UIFont .boldSystemFontOfSize(18)
        return cell
    }

    // MARK: - Navigation setup to next view controller scene
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Identifies destination view controller
        let listVC = segue.destinationViewController as! WineViewController
        
        // Identifes selected cell and sets value to passed object
        if let indexPath = self.tableView.indexPathForSelectedRow {
            // Build array comprised of category elements and selected category (currentCategory)
            var selectedWines: [String] = []
            selectedWines.append(wineCategory[indexPath.row])
            selectedWines.append(currentCategory)
            // Passed object
            listVC.currentWine = selectedWines
        }
    }
}
