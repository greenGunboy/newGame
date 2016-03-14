//
//  GameScene.swift
//  mySpriteKitTest
//
//  Created by 高橋翼 on 2016/02/09.
//  Copyright (c) 2016年 tsubasa takahashi. All rights reserved.
//

import SpriteKit

extension SKScene{
    
//    func GetMidPoint()->CGPoint{
//        return CGPointMake(self.frame.midX, self.frame.midY)
//    }
    
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var panPointReference: CGPoint?
//    var aSelector = Selector("panGesture:")
//    var panGestureRecognizer = UIPanGestureRecognizer(target: self, action: aSelector)
    var light = SKLightNode()
    var myspark = SKEmitterNode(fileNamed: "MyParticle.sks")
//    var sun = SKSpriteNode(imageNamed: "ball.jpg")
    
    override func didMoveToView(view: SKView) {
        light.position = CGPoint(x: 200, y: 300)
        myspark?.position = CGPoint(x: 0, y: 0)
        myspark?.particlePosition = light.position
//        sun.size = CGSizeMake(100, 100)
//        sun.position = light.position
        self.addChild(light)
        self.addChild(myspark!)
//        self.addChild(sun)
    }
    
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
//        for touch in touches {
//            var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
//            let location: CGPoint = appDelegate.touchPoint!
            
//            let location = touch.locationInNode(self)
//        
//            light.position = location
//            sun.position = location
            
//        }
//    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch:AnyObject in touches {
            
            let location = touch.locationInNode(self)
            light.position = location
            myspark?.position = location
//            sun.position = location
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        
    }
}
