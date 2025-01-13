//
//  PartenairesView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct PartenairesView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @EnvironmentObject var languageManager: LanguageManager  // ✅ Gestion de la langue

    var body: some View {
        VStack {
            
            Text(languageManager.localizedText(for: "title_partenaire"))
                .font(.custom(uiSettings.customFontName, size: 18))
                .bold()
                .multilineTextAlignment(.leading)  // ✅ Alignement à gauche
                .frame(maxWidth: .infinity, alignment: .leading)  // ✅ Étend le texte à gauche
            
            
            


            HStack {
                Image("logo_airbnb")
                    .resizable()
                    .frame(width: 170, height: 50)
                    .padding(10)
                
                Image("logo_booking")
                    .resizable()
                    .frame(width: 170, height: 50)

                
            }
            .padding(10)
            
            HStack {
               
                Image("logo_homes_et_villas")
                    .resizable()
                    .frame(width: 170, height: 90)
                    .padding(10)
                
                Image("logo_abritel")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(10)
                
            }
            .padding(10)

        }
        .frame(maxWidth: UIScreen.main.bounds.width * 0.9)

 
    }
}

#Preview {
    PartenairesView()
}
