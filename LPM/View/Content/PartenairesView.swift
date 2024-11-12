//
//  PartenairesView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct PartenairesView: View {
    @ObservedObject var uiSettings = UiSettings.shared

    var body: some View {
        VStack {
            Text("Chez LPM, votre logement est publié sur")
                .font(.custom(uiSettings.customFontName, size: 18))
                .bold()
                


            HStack {
                Image("logo_airbnb")
                    .resizable()
                    .frame(width: 170, height: 60)
                    .padding(10)
                
                Image("logo_booking")
                    .resizable()
                    .frame(width: 170, height: 70)

                
            }
            .padding(10)
            
            HStack {
               
                Image("logo_homes_et_villas")
                    .resizable()
                    .frame(width: 170, height: 90)
                    .padding(10)
                
                Image("logo_abritel")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(10)
                
            }
            .padding(10)

        }
        .frame(maxWidth: UIScreen.main.bounds.width * 0.9)

 
    }
}

#Preview {
    PartenairesView()
}
