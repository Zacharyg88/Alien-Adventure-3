//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        var Return = Bool ()
        let sortingItems = inventory.sorted(by: {
            if ($0.0.rarity.rawValue) < ($0.1.rarity.rawValue){
                print ($0.0)
                print($0.1)
                Return = true
            }else if $0.0.rarity.rawValue == $0.1.rarity.rawValue {
                if $0.0.baseValue < $0.1.baseValue {
                    print($0.0)
                    print($0.1)
                    Return = true
                }
            }else {
                print($0.0)
                print($0.1)
                Return = false
            }
            return Return
        })
        
        return sortingItems
}
}





// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
