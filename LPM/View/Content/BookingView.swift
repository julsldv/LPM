//
//  BookingView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct BookingView: View {
    
    @ObservedObject var uiSettings = UiSettings.shared
    @EnvironmentObject var languageManager: LanguageManager  // ✅ Gestion de la langue
    @State private var showBookingView: Bool = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                Image(systemName: "book.pages")
                    .font(.system(size: 50))
                    .foregroundColor(uiSettings.customMainColor1)
                
                // ✅ Texte traduit
                Text(languageManager.localizedText(for: "booking_title"))
                    .font(.custom(uiSettings.customFontName, size: 18))
                    .fontWeight(.bold)
                
                Text(languageManager.localizedText(for: "booking_description"))
                    .font(.custom(uiSettings.customFontName, size: 16))
                    .foregroundColor(.gray)
                
                Button(action: {
                    showBookingView = true
                    print("Ouverture de la webview propriétaires = \(showBookingView)")
                }) {
                    Text(languageManager.localizedText(for: "open_button"))
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
                .buttonStyle(NoHighlightButtonStyle())
            }
            .multilineTextAlignment(.center)
            .padding()
            .frame(width: UIScreen.main.bounds.width * 0.9)
            .background(Color.white)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color(uiSettings.customBackColor0))
        .sheet(isPresented: $showBookingView) {
            SafariView(url: URL(string: "https://sasturqoise.guestybookings.com/en/")!)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
            .environmentObject(LanguageManager())
    }
}
