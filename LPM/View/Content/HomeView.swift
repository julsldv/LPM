//
//  HomeView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var uiSettings = UiSettings.shared
    
    var body: some View {
        VStack (spacing: 0) {
            
            HeaderView()
            
            ScrollView {
                
                SpacerRectangle(width: 1, height: 1)
                
                CarrouselView()
                
                Spacer()
                
                Text("Grâce à l'app LPM, vous pouvez facilement")
                    .font(.custom(uiSettings.customFontName, size: 18))
                    .bold()
                
                SpacerRectangle(width: 1, height: 1)

                VStack (alignment: .leading) {
                    HStack {
                        Circle()
                            .fill(Color(uiSettings.customMainColor1))
                            .frame(width: 7, height: 7)
                        Text("Consulter vos performances locatives")
                    }
                    
                    HStack {
                        Circle()
                            .fill(Color(uiSettings.customMainColor1))
                            .frame(width: 7, height: 7)
                        Text("Réserver vos séjours propriétaires")
                    }
                    
                    HStack {
                        Circle()
                            .fill(Color(uiSettings.customMainColor1))
                            .frame(width: 7, height: 7)
                        Text("Rester informer des nouveautés")
                    }
                    
                    HStack {
                        Circle()
                            .fill(Color(uiSettings.customMainColor1))
                            .frame(width: 7, height: 7)
                        Text("Obtenir des réductions sur des séjours avec LPM")
                    }

                    HStack {
                        Circle()
                            .fill(Color(uiSettings.customMainColor1))
                            .frame(width: 7, height: 7)
                        Text("Nous contacter")
                    }
               
             
               
                        }
                .font(.custom(uiSettings.customFontName, size: 15))
                    
                SpacerRectangle(width: 1, height: 10)
               
                PartenairesView()
                
            }
            
        }
    }
}

#Preview {
    HomeView()
}
