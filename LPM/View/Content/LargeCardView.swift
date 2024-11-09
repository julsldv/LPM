//
//  LargeCardView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct LargeCardView: View {
    
    @ObservedObject var uiSettings = UiSettings.shared
    @State private var showSafariView: Bool = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
          HStack {
                  /*  Text("LPM")
                        .font(.custom(uiSettings.customFontName, size: 24))
                        .foregroundColor(.white)
                        .bold()
                        .padding(20)*/
              
              Image("logo_clear")
                  .resizable()
                  .frame(width: 50, height: 50)
                }
                .frame(width: 90, height: 90)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor2]),
                        startPoint: .topTrailing,
                        endPoint: .bottomLeading
                    )
                )
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(color: .gray.opacity(0.8), radius: 1, x: 1, y: 1)
                
              
                Text("+33 (0)9 80 80 83 89")
                    .font(.custom(uiSettings.customFontName, size: 18))
                    .fontWeight(.bold)
                
                Text("E-mail : hello@leggettpm.fr")
                    .font(.custom(uiSettings.customFontName, size: 18))
                    .fontWeight(.bold)
                
                VStack (spacing: 0) {
                    Text("Leggett Property Management")
                        .font(.custom(uiSettings.customFontName, size: 16))
                        .foregroundColor(.gray)
                    Text("31 Route de Riberac, 24340 La Rochebeaucourt, France")
                        .font(.custom(uiSettings.customFontName, size: 16))
                        .foregroundColor(.gray)
                }
              /*  Button(action: {
                    showSafariView = true // Modifie la valeur du binding
                    print("Ouverture de la webview propriétaires = \(showSafariView)") // Imprime la valeur dans la console
                }) {
                    Text("Ouvrir")
                        .font(.custom(uiSettings.customFontName, size: 16))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor2]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                }
                // Applique le ButtonStyle personnalisé pour supprimer l'effet de blanchiment
                .buttonStyle(NoHighlightButtonStyle())*/
            }
            .multilineTextAlignment(.center)
            .padding()
            .frame(width: UIScreen.main.bounds.width * 0.9)
            .background(Color.white)
            .cornerRadius(15)
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .sheet(isPresented: $showSafariView, onDismiss: {
                  showSafariView = false
              }) {
                  SafariView(url: URL(string: "http://conciergerie-lpm.guestyowners.com")!)
                      .edgesIgnoringSafeArea(.all)
              }
    }
}

struct LargeCardView_Previews: PreviewProvider {
    static var previews: some View {
        LargeCardView()
    }
}

