//
//  SimulateursCardView.swift
//  MyImmoZ2
//
//  Created by Julien PORTOLAN on 29/08/2024.
//

import SwiftUI

struct SimulateursCardView: View {
    @ObservedObject var uiSettings = UiSettings.shared

    var typeOfCard: String
    var imageName: String
    var title: String
    var buttonText: String
    var buttonAction: () -> Void
    var imageback: String
    
    @State private var isTapped = false
    @State private var isCardPressed = false // État pour gérer l'enfoncement de la carte

    var body: some View {
        VStack {
            VStack {
                AddPictureIcone(
                    fontSize: 40,
                    icone: imageName,
                    color: LinearGradient(
                        gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor2]),
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    width: 70,
                    height: 70
                )
                
                Text(title)
                    .font(.custom(uiSettings.customFontName, size: 16))
                    .bold()
                    .foregroundColor(uiSettings.customFontColor1)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(10)
                
             
                HStack {
                    Text(buttonText)
                        .font(.custom(uiSettings.customFontName, size: 18))
                        .foregroundColor(.white)
                        .bold()
                    .padding()
                }
                .frame(width: UIScreen.main.bounds.width * 0.7)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor2]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(10) // Garder l'arrondi du bouton uniquement
            }
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .padding(10) // Réduction du padding ici
            .background(uiSettings.customBackColor0.opacity(0.7))
            .scaleEffect(isCardPressed ? 0.95 : 1) // Effet d'enfoncement sur la carte
            .animation(.easeInOut(duration: 0.2), value: isCardPressed) // Animation douce pour l'enfoncement
            .cornerRadius(20)
            SpacerRectangle(width: 1, height: 10)
        }
        .frame(maxWidth: .infinity, maxHeight: 300) // Ajustement de la hauteur de la carte
        .background(
            Image(imageback)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}


struct SimulateursCardView_Previews: PreviewProvider {
    static var previews: some View {
        SimulateursCardView(
            typeOfCard: "1", imageName: "hands.and.sparkles",
            title: "Créer une simulation personnalisée pour votre futur projet d'achat immobilier",
            buttonText: "Projet immobilier",
            buttonAction: {
                // Action à effectuer lors du clic sur le bouton
            },
            imageback: "image2"
        )
        .background(Color.gray.opacity(0.1))
    }
}

