//
//  InfoViewController.swift
//  Wine Inventory
//
//  Created by Steve D'Amico on 4/23/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//
/* This View Controller uses text fields to display a selected wine's information.
   changes can be made and saved in this view. The user has the option to go back. */

import UIKit

class InfoViewController: UIViewController {
        
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var vendorLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var rackLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var wineIDLabel: UILabel!
    @IBOutlet weak var typeValue: UILabel!
    @IBOutlet weak var vendorValue: UILabel!
    @IBOutlet weak var nameValue: UILabel!
    @IBOutlet weak var countryValue: UILabel!
    @IBOutlet weak var regionValue: UILabel!
    @IBOutlet weak var rackValue: UILabel!
    @IBOutlet weak var positionValue: UILabel!
    @IBOutlet weak var quantityValue: UILabel!
    @IBOutlet weak var wineIDValue: UILabel!
    
    
    // Switch statement default value
    let noValue: String = ""
    
    // Passed object from CategoryViewController
    var wineChoice: String = ""
    
    // Wine info array
    var wineInfo: [String] = []
    
    // Navigation title variable dependent on wineID
    var titleValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        wineIDValue.text = wineChoice
        for var n = 0; n < ourCellar.count; ++n {
            if ourCellar[n].wineID == wineChoice {
                typeValue.text = ourCellar[n].Types
                vendorValue.text = ourCellar[n].Vendors
                nameValue.text = ourCellar[n].Names
                countryValue.text = ourCellar[n].Countries
                regionValue.text = ourCellar[n].Regions
                rackValue.text = ourCellar[n].Rack
                positionValue.text = ourCellar[n].Position
                titleValue = ourCellar[n].Names + " by " + ourCellar[n].Vendors
            }
        }
    
        // Title of current selection
        self.title = "Selected Wine is " + titleValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
