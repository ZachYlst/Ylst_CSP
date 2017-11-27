//
//  RacecarProtocol.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Drivable
{
    var engineState: Bool {get set}
    func engineStart() -> Void
    func isStarted() -> Bool
}
