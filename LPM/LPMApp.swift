//
//  LPMApp.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

@main
struct LPMApp: App {
    @StateObject var languageManager = LanguageManager()  // ✅ Gestionnaire global

    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(.light)
                .environmentObject(languageManager)  // ✅ Injection dans toutes les vues
        }
    }
}
