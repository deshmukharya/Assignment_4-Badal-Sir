//
//  ClassExtensions.swift
//  Assignment_4
//
//  Created by Arya Deshmukh on 23/05/24.
//

import Foundation
class Circle {
    var radius: Double
    init(radius: Double) {
        self.radius = radius
    }
}

extension Circle {
    var area: Double {
        get {
            return 3.14 * radius * radius
        }
    }
}


