//
//  FeatureItem.swift
//  LPM
//
//  Created by Julien PORTOLAN on 12/01/2025.
//

import SwiftUI

struct FeatureItem: View {
    
    var text: String
    @ObservedObject var uiSettings: UiSettings

    var body: some View {
        HStack(alignment: .center, spacing: 10) {  // ✅ Alignement centré et espacement ajusté
            Circle()
                .fill(Color(uiSettings.customMainColor1.opacity(0.5)))
                .frame(width: 8, height: 8)  // ✅ Légèrement plus grand pour un meilleur équilibre
                .alignmentGuide(.firstTextBaseline) { _ in 0 }  // ✅ Alignement avec la première ligne de texte

            Text(text)
                .multilineTextAlignment(.leading)  // ✅ Texte aligné à gauche
                .frame(maxWidth: .infinity, alignment: .leading)  // ✅ Texte étendu à gauche
        }
    }
}
