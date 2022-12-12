//
//  Model.swift
//  SpringAnimation_HW
//
//  Created by Алишер Маликов on 12.12.2022.
//

import Foundation

struct NameOfAnimaton {
    let somePresetOfAnimation: String
    let someCurve: String
    let forceDoubleR: Double
    let durationDoubleR: Double
    let delayDoubleR: Double
    
    var decsription: String {
        """
        Preset: \(somePresetOfAnimation)
        Curve: \(someCurve)
        force: \(forceDoubleR)
        duration: \(durationDoubleR)
        delay: \(delayDoubleR)
        """
    }
    
    static func getNameOfAnimation() -> NameOfAnimaton {
        NameOfAnimaton(somePresetOfAnimation: DataSource.shared.nameOfAnimation.randomElement()?.rawValue ?? "wobble",
                       someCurve: DataSource.shared.someCurve.randomElement()?.rawValue ?? "spring",
                       forceDoubleR: round((Double.random(in: 1...5) * 100)) / 100,
                       durationDoubleR: round((Double.random(in: 0.5...5) * 100)) / 100,
                       delayDoubleR: round((Double.random(in: 0...5) * 100)) / 100)
    }
}
