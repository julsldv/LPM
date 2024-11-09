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
                
                
               
                
            }
            PartenairesView()
        }
    }
}

#Preview {
    HomeView()
}
