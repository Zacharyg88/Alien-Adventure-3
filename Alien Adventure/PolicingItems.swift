//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        //return [UDPolicingError:Int]()
        var itemDict = [UDPolicingError:Int]()
        itemDict [UDPolicingError.itemFromCunia] = 0
        itemDict [UDPolicingError.nameContainsLaser] = 0
        itemDict [UDPolicingError.valueLessThan10] = 0
        for i in inventory {
            do {
                try policingFilter(i)
            }
                catch UDPolicingError.nameContainsLaser {
                    itemDict [UDPolicingError.nameContainsLaser]! += 1
                }
                catch UDPolicingError.itemFromCunia {
                    itemDict [UDPolicingError.itemFromCunia]! += 1
            }
                catch UDPolicingError.valueLessThan10 {
                    itemDict [UDPolicingError.valueLessThan10]! += 1
                    }
            catch {
                
            }
            
                }
    
    
                
         return itemDict
    }
        }



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
