//
//  CarrouselView.swift
//  MyImmoZ2
//
//  Created by Julien PORTOLAN on 29/08/2024.
//

import SwiftUI

struct CarrouselView: View {
    @ObservedObject var uiSettings = UiSettings.shared
    @EnvironmentObject var languageManager: LanguageManager  // ✅ Gestion de la langue
    @State private var selectedCardIndex = 0
    @State private var offset: CGFloat = 0
    @State private var showSafariView = false
    @State private var showBookingView = false
    @State private var selection: Int = 1
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {  // Pas d'espacement entre les cartes
                        // Carte 1
                        SimulateursCardView(
                            typeOfCard: "1",
                            imageName: "house",
                            title: languageManager.localizedText(for: "carousel_card1_title"),
                            buttonText: languageManager.localizedText(for: "carousel_card1_button"),
                            buttonAction: {
                                showSafariView = true
                                HapticManager.triggerLightImpact()
                            },
                            imageback: "image4"
                        )
                        .frame(width: UIScreen.main.bounds.width * 1)
                        .scaleEffect(selectedCardIndex == 0 ? 1.0 : 0.9)
                        .animation(.easeInOut(duration: 0.5), value: selectedCardIndex)
                        .gesture(
                            TapGesture()
                                .onEnded {
                                    showSafariView = true
                                    HapticManager.triggerLightImpact()

                                }
                        )
                        
                        // Carte 2
                        SimulateursCardView(
                            typeOfCard: "2",
                            imageName: "filemenu.and.cursorarrow",
                            title: languageManager.localizedText(for: "carousel_card2_title"),
                            buttonText: languageManager.localizedText(for: "carousel_card2_button"),
                            buttonAction: {
                                selection = 1
                                showBookingView = true
                                HapticManager.triggerLightImpact()
                            },
                            imageback: "bureau"
                        )
                        .frame(width: UIScreen.main.bounds.width * 1)
                        .scaleEffect(selectedCardIndex == 1 ? 1.0 : 0.9)
                        .animation(.easeInOut(duration: 0.5), value: selectedCardIndex)
                        .gesture(
                            TapGesture()
                                .onEnded {
                                    showBookingView = true
                                    HapticManager.triggerLightImpact()

                                }
                        )
                    }
                }
               
                .content.offset(x: offset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation.width + CGFloat(selectedCardIndex) * -geometry.size.width
                        }
                        .onEnded { value in
                            let threshold: CGFloat = 50 // Seuil pour rendre plus réactif
                            if value.predictedEndTranslation.width > threshold && selectedCardIndex > 0 {
                                selectedCardIndex -= 1
                            } else if value.predictedEndTranslation.width < -threshold && selectedCardIndex < 1 {
                                selectedCardIndex += 1
                            }
                            
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)) {
                                offset = -geometry.size.width * CGFloat(selectedCardIndex)
                            }
                        }
                )
            }
            .frame(height: 300)
            .sheet(isPresented: $showSafariView, onDismiss: {
                      showSafariView = false
                  }) {
                      SafariView(url: URL(string: "http://conciergerie-lpm.guestyowners.com")!)
                          .edgesIgnoringSafeArea(.all)
                  }
            .sheet(isPresented: $showBookingView, onDismiss: {
                            showBookingView = false
                        }) {
                            SafariView(url: URL(string: "https://booking.leggettpm.com/fr/properties")!)
                                .edgesIgnoringSafeArea(.all)
                        }
            
            // Points indicateurs
            HStack(spacing: 8) {
                ForEach(0..<2) { index in
                    Circle()
                        .fill(index == selectedCardIndex ? Color(uiSettings.customMainColor1.opacity(0.9)) : Color(uiSettings.customMainColor1.opacity(0.2)))
                        .frame(width: 10, height: 10)
                }
            }
        }
        
    }
}

struct CarrouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarrouselView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray.opacity(0.1))
    }
}
