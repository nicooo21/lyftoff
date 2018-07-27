//
//  GameScene.swift
//  lyftoff
//
//  Created by Nico Magana on 7/26/18.
//  Copyright © 2018 Nico Magana. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var starfield:SKEmitterNode!
    var player:SKSpriteNode!
    var scoreLabel:SKLabelNode!
    var score:Int = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x:0, y:0)
        // Initializes Starfield object
        starfield = SKEmitterNode(fileNamed: "Starfield")
        // Sets Position to top left of screen
        starfield.position = CGPoint(x: self.frame.size.width / 2, y: 1472)
        // advances time to already be falling
        starfield.advanceSimulationTime(10)
        // Creates Startfield
        self.addChild(starfield)
        // Sets position of starfield to back
        self.zPosition = -1
        
        player = SKSpriteNode(imageNamed: "shuttle")
        player.position = CGPoint(x: self.frame.size.width / 2, y: player.size.height / 2 + 20)
        self.addChild(player)
        
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        self.physicsWorld.contactDelegate = self
        
        scoreLabel = SKLabelNode(text: "Score: 0")
        scoreLabel.position = CGPoint(x: 100, y: self.frame.size.height - 60)
        scoreLabel.fontName = "AmericanTypewriter-Bold"
        scoreLabel.fontSize = 36
        scoreLabel.fontColor = UIColor.white
        score = 0
        
        self.addChild(scoreLabel)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
