//
//  WineList.swift
//  Wine Inventory
//
//  Created by Steve D'Amico on 5/9/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//

import UIKit


class WineList {
    
    var wineID: String = ""
    var Types: String = ""
    var Vendors: String = ""
    var Names: String = ""
    var Countries: String = ""
    var Regions: String = ""
    var Rack: String = ""
    var Position: String = ""
    var selectedCategory: String = ""
    var currentCategory: String = ""
    var elementName: String = ""
    var ourCellular: [AnyObject] = [AnyObject]()
    
    
    init() {
    }
    
    init(wineID: String, Types: String, Vendors: String, Names: String, Countries: String, Regions: String, Rack: String, Position: String) {
        self.wineID = wineID
        self.Types = Types
        self.Vendors = Vendors
        self.Names = Names
        self.Countries = Countries
        self.Regions = Regions
        self.Rack = Rack
        self.Position = Position
    }
}

var ourCellar = [WineList]()

func inventoryArray() -> [WineList] {
    
    ourCellar += [WineList(wineID: "01", Types: "Blush", Vendors: "Cedar Creek", Names: "Cranberry", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "4", Position: "b")]
    ourCellar += [WineList(wineID: "02", Types: "Blush", Vendors: "Cedar Creek", Names: "Cranberry", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "4", Position: "c")]
    ourCellar += [WineList(wineID: "03", Types: "Blush", Vendors: "Cedar Creek", Names: "Cranberry", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "4", Position: "d")]
    ourCellar += [WineList(wineID: "04", Types: "Blush", Vendors: "R H Phillips", Names: "Night Harvest", Countries: "United States", Regions: "Yolo County, CA", Rack: "5", Position: "c")]
    ourCellar += [WineList(wineID: "05", Types: "Blush", Vendors: "Wollersheim", Names: "Prairie", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "5", Position: "d")]
    ourCellar += [WineList(wineID: "06", Types: "Carignane", Vendors: "Stone's Throw", Names: "Semi Sweet", Countries: "United States", Regions: "Egg Harbor, WI", Rack: "3", Position: "a")]
    ourCellar += [WineList(wineID: "07", Types: "Carignane", Vendors: "Stone's Throw", Names: "Semi Sweet", Countries: "United States", Regions: "Egg Harbor, WI", Rack: "4", Position: "a")]
    ourCellar += [WineList(wineID: "08", Types: "Champagne", Vendors: "Eden Roe", Names: "Extra Dry", Countries: "United States", Regions: "", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "09", Types: "Champagne", Vendors: "Korbel", Names: "Extra Dry", Countries: "United States", Regions: "Sonoma, CA", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "10", Types: "Champagne", Vendors: "Korbel", Names: "Brut", Countries: "United States", Regions: "Sonoma, CA", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "11", Types: "Chardonnay", Vendors: "La Cremo", Names: "Sonoma", Countries: "United States", Regions: "", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "12", Types: "Chardonnay", Vendors: "Meridian", Names: "California", Countries: "United States", Regions: "", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "13", Types: "Chardonnay", Vendors: "Mezza Corona", Names: "Italian", Countries: "Italy", Regions: "", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "14", Types: "Chardonnay", Vendors: "Nominee", Names: "Central Coast", Countries: "United States", Regions: "", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "15", Types: "Chardonnay", Vendors: "Simi", Names: "Sonoma", Countries: "United States", Regions: "Sonoma, CA", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "16", Types: "Chardonnay", Vendors: "Sutter Home", Names: "187 ml", Countries: "United States", Regions: "Saint Helena, CA", Rack: "Shelf", Position: "")]
    ourCellar += [WineList(wineID: "17", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "1", Position: "a")]
    ourCellar += [WineList(wineID: "18", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "1", Position: "b")]
    ourCellar += [WineList(wineID: "19", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "1", Position: "c")]
    ourCellar += [WineList(wineID: "20", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "1", Position: "a")]
    ourCellar += [WineList(wineID: "21", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "2", Position: "a")]
    ourCellar += [WineList(wineID: "22", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "2", Position: "b")]
    ourCellar += [WineList(wineID: "23", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "2", Position: "c")]
    ourCellar += [WineList(wineID: "24", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "2", Position: "d")]
    ourCellar += [WineList(wineID: "25", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "3", Position: "a")]
    ourCellar += [WineList(wineID: "26", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "3", Position: "b")]
    ourCellar += [WineList(wineID: "27", Types: "Merlot", Vendors: "Arbor Mist", Names: "Merry Berry", Countries: "United States", Regions: "", Rack: "3", Position: "c")]
    ourCellar += [WineList(wineID: "28", Types: "Merlot", Vendors: "Happy Camper", Names: "California", Countries: "United States", Regions: "", Rack: "5", Position: "a")]
    ourCellar += [WineList(wineID: "29", Types: "Merlot", Vendors: "Happy Camper", Names: "California", Countries: "United States", Regions: "", Rack: "5", Position: "b")]
    ourCellar += [WineList(wineID: "30", Types: "Merlot", Vendors: "Door Peninsula", Names: "White", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "6", Position: "b")]
    ourCellar += [WineList(wineID: "31", Types: "Merlot", Vendors: "Door Peninsula", Names: "White", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "6", Position: "c")]
    ourCellar += [WineList(wineID: "32", Types: "Merlot", Vendors: "Door Peninsula", Names: "Blackberry", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "6", Position: "d")]
    ourCellar += [WineList(wineID: "33", Types: "Merlot", Vendors: "Arbor Mist", Names: "Blackberry", Countries: "United States", Regions: "", Rack: "Shelf", Position: "")]
    ourCellar += [WineList(wineID: "34", Types: "Muscat", Vendors: "Simon Creek", Names: "Golden", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "35", Types: "Muscat", Vendors: "Simon Creek", Names: "Golden", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "36", Types: "Muscat", Vendors: "Simon Creek", Names: "Light Sweet", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "37", Types: "Muscat", Vendors: "Simon Creek", Names: "Light Sweet", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "38", Types: "Pinot Grigio", Vendors: "Cedar Creek", Names: "Dry White", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "39", Types: "Pinot Grigio", Vendors: "Cedar Creek", Names: "Dry White", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "40", Types: "Pinot Grigio", Vendors: "Cedar Creek", Names: "Dry White", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "41", Types: "Pinot Grigio", Vendors: "Clos Du Bois", Names: "California", Countries: "United States", Regions: "", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "42", Types: "Port", Vendors: "Harris", Names: "Ruby Porto", Countries: "United States", Regions: "Franz Valley, CA", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "43", Types: "Port", Vendors: "Simon Creek", Names: "Chocolate", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "44", Types: "Port", Vendors: "Simon Creek", Names: "Chocolate", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "45", Types: "Port", Vendors: "Galena Cellars", Names: "Fontenac (Any Port in a Storm)", Countries: "United States", Regions: "Galena, IL", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "46", Types: "Port", Vendors: "Galena Cellars", Names: "Fontenac (Any Port in a Storm)", Countries: "United States", Regions: "Galena, IL", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "47", Types: "Port", Vendors: "Simon Creek", Names: "Jackson", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "48", Types: "Port", Vendors: "Simon Creek", Names: "Jackson", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "49", Types: "Port", Vendors: "Simon Creek", Names: "Jackson", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "50", Types: "Port", Vendors: "Simon Creek", Names: "Jackson", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "51", Types: "Port", Vendors: "Valentino", Names: "Port", Countries: "United States", Regions: "Long Grove, IL", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "52", Types: "Port", Vendors: "Valentino", Names: "Port", Countries: "United States", Regions: "Long Grove, IL", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "53", Types: "Port", Vendors: "Wollersheim", Names: "American", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "54", Types: "Port", Vendors: "Wollersheim", Names: "American", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "55", Types: "Port", Vendors: "Wollersheim", Names: "American", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "56", Types: "Port", Vendors: "Wollersheim", Names: "American", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "Box 4", Position: "")]
    ourCellar += [WineList(wineID: "57", Types: "Red", Vendors: "Akadona (Elk Grove)", Names: "Light", Countries: "United States", Regions: "", Rack: "6", Position: "a")]
    ourCellar += [WineList(wineID: "58", Types: "Red", Vendors: "Door Peninsula", Names: "Peninsula", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "7", Position: "a")]
    ourCellar += [WineList(wineID: "59", Types: "Red", Vendors: "Door Peninsula", Names: "Peninsula", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "7", Position: "b")]
    ourCellar += [WineList(wineID: "60", Types: "Red", Vendors: "Cedar Creek", Names: "Spice (Cedarburg)", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "7", Position: "c")]
    ourCellar += [WineList(wineID: "61", Types: "Red", Vendors: "Cedar Creek", Names: "Spice (Cedarburg)", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "7", Position: "d")]
    ourCellar += [WineList(wineID: "62", Types: "Red", Vendors: "Galena Cellars", Names: "Country", Countries: "United States", Regions: "Galena, IL", Rack: "8", Position: "a")]
    ourCellar += [WineList(wineID: "63", Types: "Red", Vendors: "Simon Creek", Names: "Untouchable", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "8", Position: "b")]
    ourCellar += [WineList(wineID: "64", Types: "Red", Vendors: "Simon Creek", Names: "Speakeasy", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "8", Position: "c")]
    ourCellar += [WineList(wineID: "65", Types: "Red", Vendors: "Simon Creek", Names: "Speakeasy", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "8", Position: "d")]
    ourCellar += [WineList(wineID: "66", Types: "Red", Vendors: "La Ferme Julien", Names: "Rouge", Countries: "France", Regions: "", Rack: "9", Position: "c")]
    ourCellar += [WineList(wineID: "67", Types: "Red", Vendors: "Le Cluzet", Names: "Rouge", Countries: "France", Regions: "", Rack: "9", Position: "d")]
    ourCellar += [WineList(wineID: "68", Types: "Riesling", Vendors: "Wollersheim", Names: "Dry", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "11", Position: "a")]
    ourCellar += [WineList(wineID: "69", Types: "Riesling", Vendors: "door Peninsula", Names: "White", Countries: "United States", Regions: "Sturgeon Bay, IL", Rack: "11", Position: "b")]
    ourCellar += [WineList(wineID: "70", Types: "Riesling", Vendors: "Wollersheim", Names: "Dry", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "12", Position: "a")]
    ourCellar += [WineList(wineID: "71", Types: "Riesling", Vendors: "Cedar Creek", Names: "Waterfall", Countries: "United States", Regions: "Cedarburg, WI", Rack: "12", Position: "b")]
    ourCellar += [WineList(wineID: "72", Types: "Riesling", Vendors: "Cedar Creek", Names: "Waterfall", Countries: "United States", Regions: "Cedarburg, WI", Rack: "12", Position: "c")]
    ourCellar += [WineList(wineID: "73", Types: "Riesling", Vendors: "Cedar Creek", Names: "Waterfall", Countries: "United States", Regions: "Cedarburg, WI", Rack: "12", Position: "d")]
    ourCellar += [WineList(wineID: "74", Types: "Riesling", Vendors: "Galena Cellars", Names: "Late Harvest", Countries: "United States", Regions: "Galena, IL", Rack: "13", Position: "c")]
    ourCellar += [WineList(wineID: "75", Types: "Riesling", Vendors: "Galena Cellars", Names: "Late Harvest", Countries: "United States", Regions: "Galena, IL", Rack: "13", Position: "d")]
    ourCellar += [WineList(wineID: "76", Types: "Riesling", Vendors: "Galena Cellars", Names: "Daffodil", Countries: "United States", Regions: "Galena, IL", Rack: "15", Position: "b")]
    ourCellar += [WineList(wineID: "77", Types: "Riesling", Vendors: "Dorsheimer", Names: "German", Countries: "United States", Regions: "Germany", Rack: "Box 2", Position: "")]
    ourCellar += [WineList(wineID: "78", Types: "Rose", Vendors: "Wollersheim", Names: "Blushing", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "9", Position: "b")]
    ourCellar += [WineList(wineID: "79", Types: "Rose", Vendors: "Galena Cellars", Names: "Country", Countries: "United States", Regions: "Galena, IL", Rack: "10", Position: "a")]
    ourCellar += [WineList(wineID: "80", Types: "Rose", Vendors: "Door Peninsula", Names: "Semi Sweet", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "10", Position: "b")]
    ourCellar += [WineList(wineID: "81", Types: "Rose", Vendors: "Door Peninsula", Names: "Semi Sweet", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "10", Position: "c")]
    ourCellar += [WineList(wineID: "82", Types: "Rose", Vendors: "Door Peninsula", Names: "Semi Sweet", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "10", Position: "d")]
    ourCellar += [WineList(wineID: "83", Types: "Rose", Vendors: "Stone's Throw", Names: "California", Countries: "United States", Regions: "Egg Harbor, WI", Rack: "11", Position: "c")]
    ourCellar += [WineList(wineID: "84", Types: "Rose", Vendors: "Stone's Throw", Names: "California", Countries: "United States", Regions: "Egg Harbor, WI", Rack: "11", Position: "d")]
    ourCellar += [WineList(wineID: "85", Types: "Sangiovese", Vendors: "Ecco Domani", Names: "Italian", Countries: "Italy", Regions: "", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "86", Types: "Sauvignon", Vendors: "Bin 36", Names: "Cabernet", Countries: "United States", Regions: "", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "87", Types: "Sauvignon", Vendors: "Charles Shaw", Names: "Blanc", Countries: "United States", Regions: "", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "88", Types: "Sauvignon", Vendors: "Happy Camper", Names: "California", Countries: "United States", Regions: "", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "89", Types: "Sauvignon", Vendors: "Louis M Martini", Names: "Cabernet", Countries: "United States", Regions: "Napa Valley, CA", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "90", Types: "Sauvignon", Vendors: "Louis M Martini", Names: "Cabernet", Countries: "United States", Regions: "Napa Valley, CA", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "91", Types: "Sauvignon", Vendors: "Santa Margherita", Names: "Cabernet", Countries: "United States", Regions: "Napa Valley, CA", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "92", Types: "Sauvignon", Vendors: "Simon Creek", Names: "Blanc", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "93", Types: "Sauvignon", Vendors: "Simon Creek", Names: "Blanc", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "94", Types: "Sauvignon", Vendors: "Simon Creek", Names: "Blanc", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "95", Types: "Sauvignon", Vendors: "Tait", Names: "Cabernet (Ball Buster)", Countries: "Austrailia", Regions: "barossa Valley", Rack: "Box 8", Position: "")]
    ourCellar += [WineList(wineID: "96", Types: "Sauvignon", Vendors: "Sutter Home", Names: "Cabernet (Signature)", Countries: "United States", Regions: "Saint Helena, CA", Rack: "Box 8", Position:  "")]
    ourCellar += [WineList(wineID: "97", Types: "Sauvignon", Vendors: "Ernest and Julio Gallo", Names: "Cabernet (187 ml)", Countries: "United States", Regions: "", Rack: "Shelf", Position: "")]
    ourCellar += [WineList(wineID: "98", Types: "Sherry", Vendors: "Simon Creek", Names: "Cream (Peninsula Gold)", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "99", Types: "Sherry", Vendors: "Simon Creek", Names: "Cream (Peninsula Gold)", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "100", Types: "Shiraz", Vendors: "Charles Shaw", Names: "California", Countries: "United States", Regions: "", Rack: "Box 3", Position: "")]
    ourCellar += [WineList(wineID: "101", Types: "Sparkling", Vendors: "Arbor Mist", Names: "Peach Sparkle", Countries: "United States", Regions: "", Rack: "Box 11", Position: "")]
    ourCellar += [WineList(wineID: "102", Types: "Sparkling", Vendors: "Gancia", Names: "Spumante (Italian)", Countries: "Italy", Regions: "", Rack: "Box 11", Position: "")]
    ourCellar += [WineList(wineID: "103", Types: "Sparkling", Vendors: "Franzia", Names: "Extra Dry", Countries: "United States", Regions: "", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "104", Types: "Sparkling", Vendors: "Freixenenl", Names: "Corden Negro", Countries: "Spain", Regions: "", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "105", Types: "Sparkling", Vendors: "Freixenenl", Names: "Corden Negro", Countries: "Spain", Regions: "", Rack: "Box 12", Position: "")]
    ourCellar += [WineList(wineID: "106", Types: "Vidal", Vendors: "Cedar Creek", Names: "Semi Dry", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "13", Position: "a")]
    ourCellar += [WineList(wineID: "107", Types: "Vidal", Vendors: "Cedar Creek", Names: "Semi Dry", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "13", Position: "b")]
    ourCellar += [WineList(wineID: "108", Types: "Vidal", Vendors: "Botham", Names: "Wisconsin", Countries: "United States", Regions: "", Rack: "14", Position: "a")]
    ourCellar += [WineList(wineID: "109", Types: "White", Vendors: "Door Peninsula", Names: "Christmas", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "14", Position: "b")]
    ourCellar += [WineList(wineID: "110", Types: "White", Vendors: "Door Peninsula", Names: "Christmas", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "14", Position: "c")]
    ourCellar += [WineList(wineID: "111", Types: "White", Vendors: "Door Peninsula", Names: "Christmas", Countries: "United States", Regions: "Sturgeon Bay, WI", Rack: "14", Position: "d")]
    ourCellar += [WineList(wineID: "112", Types: "White", Vendors: "Wollersheim", Names: "River Gold", Countries: "United States", Regions: "Prairie du Sac, WI", Rack: "15", Position: "c")]
    ourCellar += [WineList(wineID: "113", Types: "White", Vendors: "Galena Cellars", Names: "Octoberfest", Countries: "United States", Regions: "Galena, IL", Rack: "15", Position: "a")]
    ourCellar += [WineList(wineID: "114", Types: "White (Desert)", Vendors: "Cedar Creek", Names: "Settlement Gold", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "115", Types: "White (Desert)", Vendors: "Cedar Creek", Names: "Settlement Gold", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "116", Types: "White (Desert)", Vendors: "Cedar Creek", Names: "Settlement Gold", Countries: "United States", Regions: "Cedarsburg, WI", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "117", Types: "Zinfadel", Vendors: "Beringer", Names: "White", Countries: "United States", Regions: "Napa Valley, IL", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "118", Types: "Zinfadel", Vendors: "Beringer", Names: "White", Countries: "United States", Regions: "Napa Valley, IL", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "119", Types: "Zinfadel", Vendors: "Gallo of Sonoma", Names: "Sonoma", Countries: "United States", Regions: "", Rack: "Box 1", Position: "")]
    ourCellar += [WineList(wineID: "120", Types: "Zinfadel", Vendors: "Beringer", Names: "White (Sparkling)", Countries: "United States", Regions: "Napa Valley, IL", Rack: "Box 11", Position: "")]
    ourCellar += [WineList(wineID: "121", Types: "Zinfadel-Shiraz", Vendors: "Painter Bride", Names: "60/40", Countries: "United States", Regions: "", Rack: "15", Position: "d")]
    
    return ourCellar
}

let arraySize = ourCellar.count

/* Arrays to be displayed in currentCategory TableView when the respective cell is selected in RootViewController TableView*/
var wineTypes = ["Blush", "Carignane", "Champagne", "Chardonnay", "Merlot", "Muscat", "Pinot Grigio", "Port", "Red", "Riesling", "Rose", "Sangiovese", "Savignon", "Sherry", "Shiraz", "Sparkling", "Vidal", "White", "White (Desert)", "Zinfadel", "Zinfadel-Shiraz"]

var wineNames = ["187 ml", "60 / 40", "American", "Blackberry", "Blanc", "Blushing", "Brut", "Cabernet", "Cabernat (187 ml)", "Cabernet (Ball Buster)", "Cabernet (Signature)", "California", "Central Coast", "Chocolate", "Christmas", "Corden Negro (Spain)", "Country", "Cranberry", "Cream (Peninsula Gold)", "Daffodil", "Fontenac (Any Port in a Storm)", "German", "Golden", "Italian", "Jackson", "Late Harvest", "Merry Berry", "Night Harvwet", "Octoberfest", "Peach Sparkle", "Peninsula", "Port", "Praire", "River Gold", "Rouge", "Ruby Porto", "Settlement Goldz", "Sonoma", "Speakeasy", "Spice (Ceaderburg)", "Spumante (Italian)", "Untouchable", "Waterfall", "White (Sparkling)", "Wisconsin"]

var wineDescriptors = ["Crisp", "Refreshing", "Light Bodied", "Fruity", "White", "Medium body", "Dry", "Strong", "Red", "Long Lived", "Hint of Sweetness", "Slightly Bitter", "Lightly Sparkling", "Blush", "Blend", "Light", "Light Sweet", "Semi Dry", "Semi Sweet", "White", "Sparkling", "Extra Dry", "Dry White", "Sweet"]

var wineVendors = ["Akadona (Elk Grove)", "Barefoot", "Beringer", "Bin 36", "Botham", "Cedar Creek", "Charles Shaw", "Clos DuBois", "Door Peninsula", "Dorsheimer", "Ecco Domani", "Eden Roe", "Ernest and Julio Gallo", "Franzia", "Freixenenl", "Galena Cellars", "Gallo of Sonoma", "Gancia", "Happy Camper", "Harris", "Korbel", "La Cremo", "La Ferme Julien", "Le Cluzet", "Louis M Martini", "Merdian", "Mezza Corona", "Nominee", "Painter Bride", "R H Phillips", "Santa Margheritta", "Simi", "Simon Creek", "Stones Throw", "Sutter Home", "Tait", "Valentino", "Wollersheim"]

var wineCountries = ["Austrailia", "France", "Germany", "Italy", "Spain", "United States"]

var wineRegions = ["Barossa Valley", "Burgundy", "California", "Cedarsburg, WI", "Egg Harbor, WI", "Franz Valley, CA", "Galena, IL", "Illinois", "LongGrove, IL", "Napa Valley, CA", "New York", "Piedmont", "Prairie du Sac, WI", "Saint Helena, CA", "Sonoma, CA", "Sturgeopn Bay, WI", "Venato", "Wisconsin", "Yolo County, CA"]

