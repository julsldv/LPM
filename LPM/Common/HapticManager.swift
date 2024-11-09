//
//  HapticManager.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import UIKit

struct HapticManager {
    static func triggerLightImpact() {
        let generator = UIImpactFeedbackGenerator(style: .soft)
        generator.impactOccurred()
    }
    
    static func triggerHeavyImpact() {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
    
    
}

