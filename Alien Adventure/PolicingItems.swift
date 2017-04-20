//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        return [UDPolicingError:Int]()
        var itemDict: [UDPolicingError:Int] = [UDPolicingError.nameContainsLaser:0, UDPolicingError.itemFromCunia:0, UDPolicingError.valueLessThan10:0]
        for i in inventory {
            do {
                try policingFilter(i)
            }
                catch UDPolicingError.nameContainsLaser {
                    for d in itemDict {
                        if d.key == UDPolicingError.nameContainsLaser {
                            d.value += 1
                        }
                    }
                }
                catch UDPolicingError.itemFromCunia {
                    for d in itemDict {
                        if d.key == UDPolicingError.itemFromCunia {
                            d.value += 1
                        }
                    }
            }
                catch UDPolicingError.valueLessThan10 {
                    for d in itemDict {
                        if d.key == UDPolicingError.valueLessThan10 {
                            d.value += 1
                        }
                    }
                    }
            catch {
                
            }
            
                }
            }
                
            
        }
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
