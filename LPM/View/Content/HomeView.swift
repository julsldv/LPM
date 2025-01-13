//
//  HomeView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @EnvironmentObject var languageManager: LanguageManager  // ✅ Observe les changements de langue

    var body: some View {
        NavigationStack {
            
            HeaderView()
            
            ScrollView {
                
                SpacerRectangle(width: 1, height: 1)
                
                CarrouselView()
                
                Spacer()
                VStack {
                    
                // ✅ Texte traduit dynamiquement et aligné à gauche
                Text(languageManager.localizedText(for: "welcome_message"))
                    .font(.custom(uiSettings.customFontName, size: 18))
                    .bold()
                    .multilineTextAlignment(.leading)  // ✅ Alignement à gauche
                    .frame(maxWidth: .infinity, alignment: .leading)  // ✅ Étend le texte à gauche
                
                SpacerRectangle(width: 1, height: 1)
                
                // ✅ Liste des fonctionnalités alignée à gauche
                VStack(alignment: .leading, spacing: 10) {
                    FeatureItem(text: languageManager.localizedText(for: "feature_1"), uiSettings: uiSettings)
                    FeatureItem(text: languageManager.localizedText(for: "feature_2"), uiSettings: uiSettings)
                    FeatureItem(text: languageManager.localizedText(for: "feature_3"), uiSettings: uiSettings)
                    FeatureItem(text: languageManager.localizedText(for: "feature_4"), uiSettings: uiSettings)
                    FeatureItem(text: languageManager.localizedText(for: "feature_5"), uiSettings: uiSettings)
                }
                .padding(.horizontal, 10)
                .font(.custom(uiSettings.customFontName, size: 15))
                .frame(maxWidth: .infinity, alignment: .leading)  // ✅ Tout à gauche
                
                SpacerRectangle(width: 1, height: 10)
                
            }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.9)
                PartenairesView()
            }
            .scrollIndicators(.hidden)
        }
        

        
        
    }
}


#Preview {
    HomeView()
        .environmentObject(LanguageManager())  // ✅ Injection pour le Preview
}
