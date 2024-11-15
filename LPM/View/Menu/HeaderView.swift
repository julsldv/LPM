//
//  HeaderView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct HeaderView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @State private var showInfosView = false
    @State private var isQuestionMarkTapped = false // Pour changer l'icône au tap
    
    var body: some View {
        HStack {
            // Bouton sur l'icône de question dans un cercle avec un dégradé
            Button(action: {
                showInfosView = true
            }) {
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
            .fullScreenCover(isPresented: $showInfosView) {
                InfosView(showInfosView: $showInfosView)
            }
            Spacer()

            Image("logo")
                .resizable()
                .frame(width: 200, height: 50)

            SpacerRectangle(width: 1, height: 1)
            Spacer()
            
        
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
    }
}

#Preview {
    HeaderView()
}
