//
//  NoHighLightButtonStyle.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

// Création d'un ButtonStyle personnalisé pour désactiver l'effet de blanchiment
struct NoHighlightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0) // Effet d'enfoncement
            .animation(.bouncy, value: configuration.isPressed) // Animation fluide
    }
}
