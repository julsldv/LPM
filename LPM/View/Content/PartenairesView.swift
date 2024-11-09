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
            Text("Chez LPM, votre logement est publié sur : ")
                .font(.custom(uiSettings.customFontName, size: 18))
                .bold()
                


            HStack {
                Image("logo_airbnb")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(10)
                Image("logo_marriott")
                    .resizable()
                    .frame(width: 100, height: 80)
                    .padding(10)
                Image("logo_booking")
                    .resizable()
                    .frame(width: 100, height: 60)
                    .padding(10)
                
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width * 0.9)

 
    }
}

#Preview {
    PartenairesView()
}
