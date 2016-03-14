//
//  GameViewController.swift
//  mySpriteKitTest
//
//  Created by 高橋翼 on 2016/02/09.
//  Copyright (c) 2016年 tsubasa takahashi. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var panPointReference: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func didPan(sender: UIPanGestureRecognizer) {
        
//        let currentPoint = sender.translationInView(self.view)
//        if let origialPoint = panPointReference {
//            print("currentPoint: \(currentPoint)")
//            var appDelegate:AppDelegate = UIApplication().delegate as! AppDelegate
//            appDelegate.touchPoint = panPointReference!
//        } else if sender.state == .Began {
//            print("Began")
//            panPointReference = currentPoint
//        }
//        if sender.state == .Ended {
//            print("Ended")
//            panPointReference = nil
//        }
        
    }
    
    
    
}
