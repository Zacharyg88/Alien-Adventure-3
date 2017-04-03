//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        //return nil
        var itemToReturn: UDItem?
        var checkValue = 100
        if inventory.count > 0 {
            for item in inventory {
                if item.baseValue < checkValue {
                    checkValue = item.baseValue
                 itemToReturn = item
                }
                
            }
        }else {
            itemToReturn = nil
        }
        return itemToReturn
}
}
        
