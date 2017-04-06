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
        enum badgeAnimation : Int {
            case growAndShrink = 0
            case Rotate = 1
            case Shake = 2
        }
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2;
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2;
            let shakeAction = SKAction.moveBy(x: CGFloat(dX), y: CGFloat(dY), duration: 0.02);
            actionsArray.append(shakeAction);
            actionsArray.append(shakeAction.reversed());
        }
        
        let shakeBadge = SKAction.sequence(actionsArray)
        //run(SKAction.repeatForever(sequencedAction))
        
        let rotateBadge = SKAction.rotate(byAngle: CGFloat(-M_PI), duration: 1.5)
        //run(SKAction.repeatForever(rotateBadge))
        
        let shrinkBadge = SKAction.scale(to: 0.8, duration: 1.0)
        let growBadge = SKAction.scale(to: 1.1, duration: 1.0)
        let shrinkAndGrowBadge = SKAction.sequence([shrinkBadge, growBadge])
        //run(SKAction.repeatForever(shrinkAndGrowBadge))
        
        func animatedBadge (){
           let animationNumber = arc4random_uniform(3)
            if animationNumber == 0 {
                run(SKAction.repeatForever(shrinkAndGrowBadge))
            }
            if animationNumber == 1{
                run(SKAction.repeatForever(rotateBadge))
            }
            if animationNumber == 2{
                run(SKAction.repeatForever(shakeBadge))
            }
        }
        animatedBadge()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
