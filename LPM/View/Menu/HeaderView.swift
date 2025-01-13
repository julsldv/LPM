//
//  HeaderView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct HeaderView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @StateObject private var languageManager = LanguageManager()

    var body: some View {
 
        HStack {
            LanguageToggleView()
            
            Spacer()
            
            Image("logo")
                .resizable()
                .frame(width: 200, height: 50)
            
            
            
            Spacer()
            
            // ✅ Bouton aligné à droite
            NavigationLink(destination: InfosView()) {
                ZStack {
                    Circle()
                        .fill(.gray.opacity(0.1))
                        .frame(width: 30, height: 30)
                    
                    Image(systemName: "line.3.horizontal")
                        .font(.custom(uiSettings.customFontName, size: 16))
                        .foregroundStyle(uiSettings.customMainColor1)
                        .bold()
                }
            }
            .buttonStyle(PlainButtonStyle())
            .shadow(color: .clear, radius: 0)
            
        }
        .padding(.horizontal,10)
        }
    }


#Preview {
    NavigationStack {
        HeaderView()
    }
}
