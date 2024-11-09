//
//  InfosView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct InfosView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @State private var showExportView = false
    @State private var showInfoPrivacyView = false
    @State private var showConsentementView = false
    @State var showDeleteAccountView = false
    @Binding var showInfosView: Bool
    @State private var isBlurred = false
    @State private var tapCount = 0
    @State private var showTestView = false
    @State private var showLogOutView = false
    @State private var isInApp = true
    @State private var showManageCategoriesView = false
    @State private var isShowingShareSheet = false
    let appURL = URL(string: "https://apps.apple.com/app/id6462700029")
    let emailAddress = "ContactMyImmoZ@gmail.com"

    var body: some View {
                VStack (spacing: 0) {
                    HStack {
                        CloseButtonView {
                            showInfosView = false
                        }
                        SpacerRectangle(width: 1, height: 1)
                        
                        Text("Paramètres")
                            .bold()
                            .font(.custom(uiSettings.customFontName, size: 18))
                            .foregroundStyle(uiSettings.customFontColor1)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                    .background(uiSettings.customBackColor1)
                    
                    ScrollView {
                            
                                
                            
                            LargeCardView()
                            .shadow(color: .gray.opacity(0.8), radius: 1, x: 1, y: 1)

                        VStack {
                            HStack {
                                Text("Nous contacter")
                                    .font(.custom(uiSettings.customFontName, size: 16))
                                    .bold()
                                    .foregroundStyle(uiSettings.customFontColor2)
                                
                                Spacer()
                            }
                            .padding(.horizontal, 15)
                            
                            // ENVOYER UN MAIL - DEBUT
                            Button(action: {
                                if let emailURL = URL(string: "mailto:hello@leggettpm.fr") {
                                    UIApplication.shared.open(emailURL)
                                }
                            })  {
                                HStack {
                                    HStack {
                                        Image(systemName: "envelope")
                                            .font(.custom(uiSettings.customFontName, size: 20))
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(20)
                                    }
                                    .frame(width: 40, height: 40)
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
                                    
                            
                                    SpacerRectangle(width: 1, height: 1)
                                    
                                    Text("Service client")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    SpacerRectangle(width: 1, height: 1)
                                }
                                .padding(15)
                                .background(uiSettings.customBackColor2)
                                .cornerRadius(15)

                            }
                            //ENVOYER UN MAIL - FIN
                            
                            // ENVOYER UN MAIL - DEBUT
                            Button(action: {
                                if let emailURL = URL(string: "mailto:compta@leggettpm.fr") {
                                    UIApplication.shared.open(emailURL)
                                }
                            })  {
                                HStack {
                                    HStack {
                                        Image(systemName: "envelope")

                                            .font(.custom(uiSettings.customFontName, size: 20))
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(20)
                                    }
                                    .frame(width: 40, height: 40)
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
                                    
                                    SpacerRectangle(width: 1, height: 1)
                                    
                                    Text("Service comptabilité")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    SpacerRectangle(width: 1, height: 1)
                                }
                                .padding(15)
                                .background(uiSettings.customBackColor2)
                                .cornerRadius(15)

                            }
                            //ENVOYER UN MAIL - FIN
                         
                         
                            // ENVOYER UN MAIL - DEBUT
                            Button(action: {
                                if let emailURL = URL(string: "mailto:estimation@leggettpm.fr") {
                                    UIApplication.shared.open(emailURL)
                                }
                            })  {
                                HStack {
                                        
                                        HStack {
                                            Image(systemName: "slider.horizontal.2.square")
                                                .font(.custom(uiSettings.customFontName, size: 20))
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding(20)
                                        }
                                        .frame(width: 40, height: 40)
                                        .background(
                                            LinearGradient(
                                                gradient: Gradient(colors: [uiSettings.customMainColor1, uiSettings.customMainColor1.opacity(0.3)]),
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
                                        
                                      
                                        Text("Obtenir une estimation")
                                            .font(.custom(uiSettings.customFontName, size: 16))
                                            .foregroundStyle(uiSettings.customFontColor1)
                                            .padding(5)
                                    
                                   
                                    SpacerRectangle(width: 1, height: 1)
                                    
                                   
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    SpacerRectangle(width: 1, height: 1)
                                }
                                .padding(15)
                                .background(uiSettings.customBackColor2)
                                .cornerRadius(15)

                            }
                            //ENVOYER UN MAIL - FIN
                        
                            
                            
                            SpacerRectangle(width: 1, height: 10)
                            
                            
                            HStack {
                                Text("Paramètres")
                                    .font(.custom(uiSettings.customFontName, size: 16))
                                    .bold()
                                    .foregroundStyle(uiSettings.customFontColor2)
                                
                                Spacer()
                            }
                            .padding(.horizontal, 15)
                            
                            // BOUTON PARTAGER L'APPLICATION - DEBUT
                            Button(action: {
                                isShowingShareSheet = true
                            }) {
                                HStack {
                                   
                                    HStack {
                                        Image(systemName: "square.and.arrow.up")
                                            .font(.custom(uiSettings.customFontName, size: 20))
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(20)
                                    }
                                    .frame(width: 40, height: 40)
                                    .background(
                                        LinearGradient(
                                            gradient: Gradient(colors: [uiSettings.customBrownColor1, uiSettings.customBrownColor2]),
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

                            
                                    SpacerRectangle(width: 1, height: 1)
                                    
                                    Text("Partager LPM")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.custom(uiSettings.customFontName, size: 16))
                                        .foregroundStyle(uiSettings.customFontColor1)
                                    
                                    SpacerRectangle(width: 1, height: 1)
                                }
                                .padding(15)
                                .background(uiSettings.customBackColor2)
                                .cornerRadius(15)

                            }
                            .sheet(isPresented: $isShowingShareSheet) {
                                if let url = appURL {
                                    ShareSheet(activityItems: [url])
                                }
                            }
                            // BOUTON PARTAGER L'APPLICATION - FIN
                            
                            
                            // Version - début
                            HStack {
                                
                                HStack {
                                    Image(systemName: "info.circle")
                                        .font(.custom(uiSettings.customFontName, size: 20))
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding(20)
                                }
                                .frame(width: 40, height: 40)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [uiSettings.customBrownColor2, uiSettings.customBrownColor1]),
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

                                
                                
                                SpacerRectangle(width: 1, height: 1)
                                
                                Text("Version")
                                    .font(.custom(uiSettings.customFontName, size: 16))
                                    .foregroundStyle(uiSettings.customFontColor1)
                                
                                Spacer()
                                
                                Text("0.5.0")
                                    .font(.custom(uiSettings.customFontName, size: 16))
                                    .foregroundStyle(uiSettings.customFontColor1)
                                
                                SpacerRectangle(width: 1, height: 1)
                            }
                            .padding(15)
                            .background(uiSettings.customBackColor2)
                            .cornerRadius(15)

                            // Version - fin
                            
                            SpacerRectangle(width: 1, height: 10)
                            
                            
                        }
                        .padding(20)
                        
                        Spacer()

                    }
                }
             
        
    }
}

#Preview {
    InfosView(showInfosView: .constant(false))
}

