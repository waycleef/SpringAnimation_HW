//
//  ViewController.swift
//  SpringAnimation_HW
//
//  Created by Алишер Маликов on 09.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animatonLabels: [UILabel]!
    @IBOutlet var runButtonLabel: UIButton!
    
    var nameOfAnimation: AnimationPreset!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfAnimation = AnimationPreset.pop
        randomParametrs(preset: nameOfAnimation)
    }
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        
        randomParametrs(preset: nameOfAnimation)
        animationView.animate()
        nameOfAnimation = AnimationPreset.allCases.randomElement()
        runButtonLabel.setTitle("Run \(nameOfAnimation ?? .pop)", for: .normal)

    }
    
}

extension ViewController {
    private func randomParametrs(preset: AnimationPreset) {
        animatonLabels[0].text = "preset: \(preset)"
        
        animationView.animation = "\(preset)"
        
        let someCurve = AnimationCurve.allCases.randomElement()
        animationView.curve = someCurve?.rawValue ?? ""
        animatonLabels[1].text = "curve: \(someCurve?.rawValue ?? "")"
        
        let forceDoubleR = round((Double.random(in: 1...5) * 100)) / 100
        animationView.force = forceDoubleR
        animatonLabels[2].text = "force: \(forceDoubleR)"
        
        let durationDoubleR = round((Double.random(in: 0.5...5) * 100)) / 100
        animationView.duration = durationDoubleR
        animatonLabels[3].text = "duration: \(durationDoubleR)"
        
        let delayDoubleR = round((Double.random(in: 0...5) * 100)) / 100
        animationView.force = delayDoubleR
        animatonLabels[4].text = "delay: \(delayDoubleR)"
    }
}

