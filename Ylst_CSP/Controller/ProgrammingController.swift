//
//  ProgrammingController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

class ProgrammingController: UIViewController
{
    //MARK: UI Components
    
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showFPS = true
        gameView.showNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }
    
}
