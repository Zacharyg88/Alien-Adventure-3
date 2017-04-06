//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var correctBadgeCheck = Int()
        var badgeCopy = [UDRequestType]()
        for b in badges {
            badgeCopy.append(b.requestType)
        }
            for r in requestTypes {
                if badgeCopy.count >= 1 {
                if badgeCopy.contains(r) {
                    correctBadgeCheck += 1
                   // print(badgeCopy)
                    //badgeCopy.remove(at: 0)
                    //print(badgeCopy)
                }
            }
        }
    
        print(correctBadgeCheck)
        print(badges.count)
        if correctBadgeCheck == badges.count {
            correctBadgeCheck = 0
            return true
        }else{
            correctBadgeCheck = 0
            return false
        }
        
        
    }
    
}

