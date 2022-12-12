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
    @IBOutlet var animationLabel: UILabel!
    
    private var nameOfAnimation = NameOfAnimaton.getNameOfAnimation()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationFunc()
    }
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        animationFunc()
        sender.setTitle("Run \(nameOfAnimation[index].somePresetOfAnimation ?? .pop)", for: .normal)
        animationView.animate()
    }
    
    private func animationFunc() {
        animationView.animation = nameOfAnimation[index].somePresetOfAnimation?.rawValue ?? ""
        animationView.curve = nameOfAnimation[index].someCurve?.rawValue ?? ""
        animationView.force = nameOfAnimation[index].forceDoubleR
        animationView.duration = nameOfAnimation[index].durationDoubleR
        animationView.delay = nameOfAnimation[index].delayDoubleR
        animationLabel.text = nameOfAnimation[index].decsription
        
        index += 1
        
        if index == nameOfAnimation.count - 1 {
            index = 0
        }
    }
    
}


