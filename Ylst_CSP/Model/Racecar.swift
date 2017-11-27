//
//  Racecar.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Racecar: Drivable
{
    public init()
    {
        self.engineState = true
    }
    
    //MARK: Drivable data members
    public var engineState: Bool
    
    //MARK: Drivable methods
    public func engineStart() -> Void
    {
        
    }
    
    public func isStarted() -> Bool
    {
        if(engineState)
        {
            print("Engine started")
        }
        else
        {
            print("Engine off")
        }
        return engineState
    }
}
