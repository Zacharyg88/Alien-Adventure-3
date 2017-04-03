//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        //return nil
        var charaDict = [Character:Int] ()
        var characterReturn: Character?
        var countCheck = 0
        var updateValue: Int
        
        //charaDict["!"] = 0
        
        for item in inventory {
            if let name = item.name as? String {
                for char in name.lowercased().characters {
                    
                    if charaDict[char] == nil {
                        charaDict [char] = 1
                    } else {
                        for (key, value) in charaDict {
                            print("hi")
                            updateValue = (value + 1)
                            if key == char {
                                print("==")
                                charaDict [key] = updateValue
                            }                     }
                    }
                }
            }
        }
        
        for (key, value) in charaDict {
            if value > countCheck {
                countCheck = value
                characterReturn = key
            }
        }
        
        
        
        print("charaDict: \(charaDict)")
        //print(characterReturn!)
        print(">> Return: \(characterReturn as Any)")
        
        return characterReturn
        
}
}
