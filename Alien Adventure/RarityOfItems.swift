//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        //return [UDItemRarity:Int]()
        var rarityDict = [UDItemRarity.common:0, UDItemRarity.uncommon:0, UDItemRarity.rare:0, UDItemRarity.legendary:0]
        var commonCount = 0
        var uncommonCount = 0
        var rareCount = 0
        var legendaryCount = 0
        for i in inventory {
           
                if i.rarity.rawValue == 0 {
                   commonCount += 1
                }
                if i.rarity.rawValue == 1 {
                    uncommonCount += 1
                }
                if i.rarity.rawValue == 2 {
                    rareCount += 1
                }
               if i.rarity.rawValue == 3 {
                    legendaryCount += 1
                }
            
        }
        rarityDict[UDItemRarity.common] = commonCount
        rarityDict[UDItemRarity.uncommon] = uncommonCount
        rarityDict[UDItemRarity.rare] = rareCount
        rarityDict[UDItemRarity.legendary] = legendaryCount
        return rarityDict
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
