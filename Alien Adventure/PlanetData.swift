//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        //return ""
        let planetJSON = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetData = try! Data(contentsOf: planetJSON)
        var planetJSONDict: [[String:Any]]!
        do {
            planetJSONDict = try!
                JSONSerialization.jsonObject(with: rawPlanetData, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        var itemCheck = 0
        var compareInt = 0
        var Return = ""
        var planets = [String:Int] ()
        for i in planetJSONDict {
            if let planetName = i ["Name"] as? String {
                print(planetName)
                if let common = i ["CommonItemsDetected"] as? Int {
                    print(common)
                    itemCheck += common
                }
                if let uncommon = i ["UncommonItemsDetected"] as? Int {
                    print(uncommon)
                    itemCheck += (uncommon * 2)
                }
                if let rare = i ["RareItemsDetected"] as? Int {
                    print(rare)
                    itemCheck += (rare * 3)
                }
                if let legendary = i ["LegendaryItemsDetected"] as? Int {
                    print(legendary)
                    itemCheck += (legendary * 4)
                }
            planets["\(planetName)"] = itemCheck
            print(itemCheck)
            print(compareInt)
            if itemCheck == compareInt {
                // Return = planetName
                //print(Return)
            }
             else if itemCheck > compareInt {
                    compareInt = itemCheck
                    itemCheck = 0
                }
            else if itemCheck < compareInt {
                itemCheck = 0
                }
                print(planets)
                print(itemCheck)
                print(compareInt)

        }
    }
        for p in planets {
            let finalCheck = p.value
                print(finalCheck)
                if finalCheck == compareInt {
                    Return = p.key
                    print(Return)
                }
            }
        
        
    

        
return Return
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
