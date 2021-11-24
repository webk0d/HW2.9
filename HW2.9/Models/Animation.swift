//
//  Animation.swift
//  HW2.9
//
//  Created by Сергей Чумаков on 24.11.2021.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Floa
    
    static func getRandomAnimation() -> Animation {
        return Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...3),
            delay: Float.random(in: 0.1...0.5)
        )
    }
}
