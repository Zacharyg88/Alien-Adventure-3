//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
       // return nil
        var originDict = [UDItem]()
        var oldestItem: UDItem?
        var ageCheck = 0
        for i in inventory {
            if let planetCheck = i.historicalData ["PlanetOfOrigin"] as? String {
                if planet == planetCheck{
                    originDict.append(i)
                }
                for i in originDict {
                    if let age = i.historicalData ["CarbonAge"] as? Int {
                        if age > ageCheck {
                            ageCheck = age
                        }
                        if age <= ageCheck {
                            oldestItem = i
                        }
                    }
                
                    else {
                    oldestItem = nil
                    }
                    }
                    
            }
        }
     return oldestItem
    }

}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
