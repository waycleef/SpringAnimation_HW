//
//  Model.swift
//  SpringAnimation_HW
//
//  Created by Алишер Маликов on 12.12.2022.
//

import Foundation
import SpringAnimation

struct NameOfAnimaton {
    let somePresetOfAnimation: AnimationPreset?
    let someCurve: AnimationCurve?
    let forceDoubleR: Double
    let durationDoubleR: Double
    let delayDoubleR: Double
    
    var decsription: String {
        """
        Preset: \(somePresetOfAnimation ?? .swing)
        Curve: \(someCurve ?? .easeIn)
        force: \(forceDoubleR)
        duration: \(durationDoubleR)
        delay: \(delayDoubleR)
        """
    }
    
    static func getNameOfAnimation() -> [NameOfAnimaton] {
        var animations: [NameOfAnimaton] = []
        
        for _ in 0..<AnimationPreset.allCases.count {
            animations.append(NameOfAnimaton(somePresetOfAnimation: AnimationPreset.allCases.randomElement(),
                                             someCurve: AnimationCurve.allCases.randomElement(),
                                             forceDoubleR: round((Double.random(in: 1...5) * 100)) / 100,
                                             durationDoubleR: round((Double.random(in: 0.5...5) * 100)) / 100,
                                             delayDoubleR: round((Double.random(in: 0...5) * 100)) / 100))
        }
        return animations
    }
}
