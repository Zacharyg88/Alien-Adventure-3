//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    var specBadge = SKTexture(image: #imageLiteral(resourceName: "BadgeTeal"))
    override init(requestType: UDRequestType) {
       super.init(requestType: requestType)
        self.texture = SKTexture(image: #imageLiteral(resourceName: "BadgeTeal"))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
