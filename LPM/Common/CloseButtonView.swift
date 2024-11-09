//
//  CloseButtonView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import SwiftUI

struct CloseButtonView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var uiSettings = UiSettings.shared
    @State private var isLoading = false
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            
            action() //Les actions demandées par l'appelant
            HapticManager.triggerLightImpact() //La vibration
            presentationMode.wrappedValue.dismiss() //Fermer la vue active
            
        }) {
            
            ZStack {
                Circle()
                    .fill(.gray.opacity(0.1))
                    .frame(width: 30, height: 30)
                Image(systemName: "chevron.down")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundStyle(uiSettings.customMainColor1)
            }
                
        }
        
    }
}

#Preview {
    CloseButtonView(action: {
        print("Action executed")
    })
}

