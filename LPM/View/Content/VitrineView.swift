//
//  VitrineView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct VitrineView: View {
    @ObservedObject var uiSettings = UiSettings.shared

    var body: some View {
        ZStack {
            // Texte centré en dessous des images
            HStack {
                Spacer()
                VStack {
                    Text("Nous gérons, vous profitez.")
                        .font(.custom(uiSettings.customFontName, size: 22))
                        .foregroundStyle(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                        .lineLimit(nil) // Autorise le passage à plusieurs lignes
                        .fixedSize(horizontal: false, vertical: true) // Permet de s'étendre verticalement si nécessaire
                    
                    Text("-")
                        .font(.custom(uiSettings.customFontName, size: 22))
                        .foregroundStyle(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Text("Your home in safe hands.")
                        .font(.custom(uiSettings.customFontName, size: 22))
                        .foregroundStyle(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                        .lineLimit(nil) // Autorise le passage à plusieurs lignes
                        .fixedSize(horizontal: false, vertical: true) // Permet de s'étendre verticalement si nécessaire
                }.padding(30)

            }
            .frame(width: 300, height: 130)
            .padding(20)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor2]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(10)
            .padding(.horizontal, 30) // Assure que le texte est bien espacé
            .zIndex(1) // Assure que le texte reste derrière les images

            // Les deux images superposées et visibles complètement
            HStack {
                VStack(spacing: -30) { // Ajuste l'espacement vertical entre les images
                    Image("image2")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(color: .gray.opacity(0.8), radius: 1, x: 1, y: 1)
                        .rotationEffect(.degrees(-10))  // Rotation de la première image
                        .offset(x: 30, y: -30) // Ajuster l'offset pour que l'image ne soit pas trop décalée

                    Image("image4")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(color: .gray.opacity(0.8), radius: 1, x: 1, y: 1)
                        .rotationEffect(.degrees(-10)) // Rotation de la deuxième image
                        .offset(x: 30, y: 20) // Ajuster l'offset pour que l'image ne soit pas trop décalée
                }
                Spacer()
            }
            .zIndex(2) // Met les images au-dessus du texte
        }
        .frame(maxWidth: .infinity) // Garde la largeur maximale possible
        .padding(.horizontal, 20) // Un padding pour que tout soit centré correctement sans déborder
        .background(Color.clear) // Pas de fond global, fond transparent
    }
}

#Preview {
    VitrineView()
}
