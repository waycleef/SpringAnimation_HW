//
//  Datasource.swift
//  SpringAnimation_HW
//
//  Created by Алишер Маликов on 12.12.2022.
//

import Foundation
import SpringAnimation

struct DataSource {
    static let shared = DataSource()
    
    let nameOfAnimation = AnimationPreset.allCases
    let someCurve = AnimationCurve.allCases
    
    private init () {}
}
