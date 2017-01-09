//
//  HeldKarp.swift
//  HeldKarp
//
//  Created by John Ahrens on 1/7/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class HeldKarp {
    
    func computeRouteStartingAt(start: String,
                                waypoints: [String: PointOfInterest],
                                endAt: String) -> (route: Array<String>, distance: Double) {
        var route = [start]
        var routeDistance = 0.0
        for (name, poi) in waypoints {
            if name == start {
                for (n, distance) in poi.reachablePoints {
                    route.append(name)
                    routeDistance += distance
                }
            }
        }

        return (route, routeDistance)
    }
}
