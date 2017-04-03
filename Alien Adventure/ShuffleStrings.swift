//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        var Return = true
        //var s1Index = s1[s1.characters.startIndex]
        //var s2Index = s2[s2.characters.startIndex]
        var s1Check = 0
        var s2Check = 0
        if (s1 == "" && s2 == "" && shuffle == "" ){
            Return = true
        }
        if shuffle.characters.count != (s1.characters.count + s2.characters.count) {
            Return = false
        }
        if shuffle != "" && s1 != "" && s2 != "" {
            var s1Index = s1[s1.characters.startIndex]
            var s2Index = s2[s2.characters.startIndex]
        
        for Character in shuffle.characters {
            
            if Character == s1Index {
                if s1Check < (s1.characters.count - 1) {
                    s1Check += 1
                }
                s1Index = s1[s1.characters.index(s1.characters.startIndex, offsetBy: Int(s1Check))]
                
                
                
                
            }
            else if Character == s2Index {
                if s2Check < (s2.characters.count - 1) {
                    s2Check += 1
                }
                s2Index = s2[s2.characters.index(s2.characters.startIndex, offsetBy: Int(s2Check))]
                
                
            }else {
                Return = false
            }
        }
    }
    
                return Return
        
        
    }
}





