//
//  ViewController.swift
//  HW2.9
//
//  Created by Сергей Чумаков on 24.11.2021.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationPresetLabel: UILabel!
    @IBOutlet weak var animationCurveLabel: UILabel!
    @IBOutlet weak var animationForceLabel: UILabel!
    @IBOutlet weak var animationDurationLabel: UILabel!
    @IBOutlet weak var animationDelayLabel: UILabel!
    
    @IBOutlet weak var animationView: SpringView!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        setAnimationLabel()
    }
    
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        setAnimationLabel()
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Next: \(animation.name)", for: .normal)
    }
    
    private func setAnimationLabel() {
        animationPresetLabel.text = animation.name
        animationCurveLabel.text = animation.curve
        animationForceLabel.text = String(format: "%.02f", animation.force)
        animationDurationLabel.text = String(format: "%.02f", animation.duration)
        animationDelayLabel.text = String(format: "%.02f", animation.delay)
    }
    
}

