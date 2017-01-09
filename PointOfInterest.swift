//
//  PointOfInterest.swift
//  HeldKarp
//
//  Created by John Ahrens on 1/7/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class PointOfInterest {
    let name: String
    let reachablePoints: [String: Double] // Name, distance
    
    init(withName: String, reachablePoints: [String: Double]) {
        self.name = withName
        self.reachablePoints = reachablePoints
    }
}
