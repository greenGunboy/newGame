//
//  GameScene.swift
//  mySpriteKitTest
//
//  Created by 高橋翼 on 2016/02/09.
//  Copyright (c) 2016年 tsubasa takahashi. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var mylight = SKLightNode()
    var myspark = SKEmitterNode(fileNamed: "MyParticle.sks")
    let atlas = SKTextureAtlas(named: "walk")
    var left = SKSpriteNode(imageNamed: "ball.jpg")
    var right = SKSpriteNode(imageNamed: "ball.jpg")
    var person = SKSpriteNode()
//    var middle = UILongPressGestureRecognizer.self
    var migi: Bool = false
    var hidari: Bool = false
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = SKColor.cyanColor()
        
//        SKView.animateWithDuration(60, animations: {() -> Void in self.backgroundColor = SKColor.orangeColor()})
        
        let day = SKAction.moveTo(CGPoint(x: -10, y: 600), duration: 60)
        mylight.position = CGPoint(x: 1200, y: 600)
        mylight.runAction(day)
        myspark?.position = mylight.position
        myspark?.runAction(day)
        
        let d1 = atlas.textureNamed("walk")
//        let d2 = atlas.textureNamed("walk2")
//        let d3 = atlas.textureNamed("walk3")
//        let action2 = SKAction.animateWithTextures([d1, d2, d1, d3], timePerFrame: 0.25)
        
        person = SKSpriteNode(texture: d1)
        person.size = CGSizeMake(130, 180)
        person.position = CGPoint(x: 660, y: 90)
        person.shadowCastBitMask = 1
//        person.lightingBitMask = 1
        
//        var action = SKAction.moveTo(CGPoint(x: 0, y: 90), duration: 30)
//        person.runAction(action)
//        person.runAction(SKAction.repeatActionForever(action2))
        self.addChild(person)
        self.addChild(mylight)
        
//        myspark!.position = CGPoint(x: -40, y: -40)
        self.addChild(myspark!)
        
        left.size = CGSizeMake(100, 100)
        right.size = CGSizeMake(100, 100)
        left.position = CGPoint(x: 100, y: 90)
        right.position = CGPoint(x: 1250, y: 90)
        self.addChild(left)
        self.addChild(right)
        
//        var a = UILongPressGestureRecognizer(target: self, action: left)
        
    }
    
//    func longPressGesture(sender: UILongPressGestureRecognizer){
//        if sender.state == UIGestureRecognizerState.Began {
//            print("start")
//        }
//        if sender.state == UIGestureRecognizerState.Ended {
//            print("end")
//        }
//    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch: AnyObject in touches {
            
//            let d1 = atlas.textureNamed("walk")
//            let d2 = atlas.textureNamed("walk2")
//            let d3 = atlas.textureNamed("walk3")
//            let action2 = SKAction.animateWithTextures([d1, d2, d1, d3], timePerFrame: 0.25)
            
            let location = touch.locationInNode(self)
            let touchNode = self.nodeAtPoint(location)
            
            if touchNode == left {
                UIView.animateWithDuration(50, animations:  {() -> Void in self.backgroundColor = UIColor.greenColor()}, completion: {finished in print("色が変わりました")})
//                SKView.animateWithDuration(50, animations: {() -> Void in self.backgroundColor = SKColor.orangeColor()}, completion: nil)
//                SKView.animateWithDuration(60, animations: {() -> Void in self.backgroundColor = SKColor.orangeColor()})
                print("ON")
//                hidari = true
//                let left = SKAction.moveTo(CGPoint(x: person.position.x - 20, y: 90), duration: 1)
//                person.runAction(SKAction.repeatActionForever(left))
//                person.runAction(action2)
            }
//            if touchNode != left {
//                print("off")
//            }
            if touchNode == right {
                migi = true
//                let right = SKAction.moveTo(CGPoint(x: person.position.x + 20, y: 90), duration: 1)
//                person.runAction(SKAction.repeatActionForever(right))
//                person.runAction(action2)
            }
            
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch:AnyObject in touches {
            
//            let location = touch.locationInNode(self)
            
//            mylight.position = location
//            myspark?.position = location

        }
    }
    
    override func update(currentTime: NSTimeInterval) {
        
        let d1 = atlas.textureNamed("walk")
        let d2 = atlas.textureNamed("walk2")
        let d3 = atlas.textureNamed("walk3")
        let action2 = SKAction.animateWithTextures([d1, d2, d1, d3], timePerFrame: 0.25)
        
        if hidari {
            print("on")
            let left = SKAction.moveTo(CGPoint(x: person.position.x - 20, y: 90), duration: 1)
            person.runAction(SKAction.repeatActionForever(left))
            person.runAction(action2)
        }
        
        if migi {
            let right = SKAction.moveTo(CGPoint(x: person.position.x + 20, y: 90), duration: 1)
            person.runAction(SKAction.repeatActionForever(right))
            person.runAction(action2)
        }
        
    }

}
