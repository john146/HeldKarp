//
//  Route.swift
//  HeldKarp
//
//  Created by John Ahrens on 1/8/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class Route {
    var totalDistance: Double
    var route: [String]
    var routePoi: [PointOfInterest]
    
    init() {
        totalDistance = 0.0
        route = []
        routePoi = []
    }
    
    init(withStart: PointOfInterest) {
        totalDistance = 0.0
        route = [withStart.name]
        routePoi = [withStart]
    }
    
    func addPointOfInterest(poi: PointOfInterest, distance: Double) {
        totalDistance += distance
        route.append(poi.name)
        routePoi.append(poi)
    }
}
