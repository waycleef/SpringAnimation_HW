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
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = nameOfAnimation.decsription
        }
    }
    
    private var nameOfAnimation = NameOfAnimaton.getNameOfAnimation()
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        animationLabel.text = nameOfAnimation.decsription
        
        animationView.animation = nameOfAnimation.somePresetOfAnimation
        animationView.curve = nameOfAnimation.someCurve
        animationView.force = nameOfAnimation.forceDoubleR
        animationView.duration = nameOfAnimation.durationDoubleR
        animationView.delay = nameOfAnimation.delayDoubleR
        animationView.animate()
        
        nameOfAnimation = NameOfAnimaton.getNameOfAnimation()
        sender.setTitle("Run \(nameOfAnimation.somePresetOfAnimation)", for: .normal)
    }
    
}


