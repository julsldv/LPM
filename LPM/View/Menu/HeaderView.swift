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
            Spacer()
            Spacer()
            Image("logo")
                .resizable()
                .frame(width: 200, height: 50)
            Spacer()
            
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
            .fullScreenCover(isPresented: $showInfosView) {
                InfosView(showInfosView: $showInfosView)
            }
        }
        .padding(10)
    }
}

#Preview {
    HeaderView()
}
