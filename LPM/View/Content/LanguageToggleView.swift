//
//  LanguageToggleView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 12/01/2025.
//

import SwiftUI

struct LanguageToggleView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @EnvironmentObject var languageManager: LanguageManager  // ✅ Connexion directe au gestionnaire de langue

    var body: some View {
        HStack(spacing: 0) {
            HStack {
                // 🇫🇷 Drapeau Français
                Text("🇫🇷")
                    .font(.system(size: 24))
                    .opacity(languageManager.isFrench ? 1.0 : 0.1)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            languageManager.isFrench = true  // ✅ Active le Français
                            HapticManager.triggerLightImpact()
                        }
                    }

                // 🇬🇧 Drapeau Anglais
                Text("🇬🇧")
                    .font(.system(size: 24))
                    .opacity(languageManager.isFrench ? 0.1 : 1.0)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            languageManager.isFrench = false  // ✅ Active l'Anglais
                            HapticManager.triggerLightImpact()
                        }
                    }
            }
            .padding(.horizontal, 5)
        }
        .background(.gray.opacity(0.1))
        .cornerRadius(30)
    }
}

#Preview {
    LanguageToggleView()
        .environmentObject(LanguageManager())
}

