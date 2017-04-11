//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        //var badgeCheck = Bool ()
        var badgeCopy = [UDRequestType] ()
        for b in badges {
            badgeCopy.append(b.requestType)
            print(badgeCopy)
        }
        for r in requestTypes {
                if !badgeCopy.contains(r) {
                    print(r)
                    return false
                }
                
                
            }
        return true
        }
  
 }


