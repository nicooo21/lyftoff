//
//  GameScene.swift
//  lyftoff
//
//  Created by Nico Magana on 7/26/18.
//  Copyright © 2018 Nico Magana. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var starfield:SKEmitterNode!
    var player:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: 0, y: 1472)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        self.zPosition = -1
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
