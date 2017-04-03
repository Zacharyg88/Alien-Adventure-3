//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        //return [Int]()
        //var qualifyingDict = [String:Any]()
        var intArray = [Int] ()
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        for i in itemArray {
            if let name = i ["Name"] as? String{
                print(name)
                if name.contains("Laser") {
                    print("NameCheck")
                    if let histData = i ["HistoricalData"] as? [String:Any] {
                        print("histCheck")
                        if let carbonAge = histData ["CarbonAge"] as? Int {
                        print(carbonAge)
                        if carbonAge < 30 {
                            if let ID = i ["ItemID"] as? Int{
                                print(ID)
                                intArray.append(ID)
                            }
                            }
            }
        }
}
}
}
        print(intArray)
return intArray
}
}








           // If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
