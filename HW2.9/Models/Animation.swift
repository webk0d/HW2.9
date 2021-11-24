//
//  File.swift
//  HW2.9
//
//  Created by Сергей Чумаков on 24.11.2021.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getRandomAnimation() -> Animation {
        return Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "shake",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Float.random(in: 0.5...1.5),
            duration: Float.random(in: 0.5...2.5),
            delay: Float.random(in: 0.1...0.5)
        )
    }
}
