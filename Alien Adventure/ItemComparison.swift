//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    var Return = false
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        Return = true
    }
    if lhs.rarity.rawValue == rhs.rarity.rawValue {
        if lhs.baseValue < rhs.baseValue {
            Return = true
        }else {
            Return = false
        }
    }

    return Return
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
