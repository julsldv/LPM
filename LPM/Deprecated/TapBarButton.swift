//
//  TapBarButton.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//
/*
import SwiftUI

struct TapBarButton: View {
    @ObservedObject var uiSettings = UiSettings.shared
    
    let imageName: String
    let selectedImageName: String
    let text: String
    let index: Int
    @Binding var selection: Int
    
    var isSelected: Bool {
        index == selection
    }
    
    var body: some View {
        Button(action: {
            selection = index
        }, label: {
            VStack {
                HStack {
                    Image(systemName: isSelected ? selectedImageName : imageName)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(isSelected ? uiSettings.customMainColor1 : uiSettings.customFontColor2)
                }
                .frame(width: isSelected ? 48 : 30, height: 30)
                .background(isSelected ? LinearGradient(gradient: Gradient(colors: [uiSettings.customMainColor1.opacity(0.1), uiSettings.customMainColor1.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing).cornerRadius(10) : nil)
                
                Text(text)
                    .font(.system(size: 10))
            }
            .padding()
            .frame(height: 60)
        }).frame(maxWidth: .infinity)
    }
}
*/
