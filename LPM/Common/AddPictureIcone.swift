//
//  AddPictureIcone.swift
//  MyImmoZ2
//
//  Created by Julien PORTOLAN on 19/09/2024.
//

import SwiftUI

struct AddPictureIcone: View {
    @ObservedObject var uiSettings = UiSettings.shared
    var fontSize: CGFloat
    var icone: String
    var color: LinearGradient
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
       
                   HStack {
                       Image(systemName: icone)
                           .foregroundColor(.white)
                           .font(.custom(uiSettings.customFontName, size: fontSize))
                           .padding(10)
                           .bold()
                   }
                   .frame(width: width, height: height)
                   .background(color.opacity(0.6))
                   .cornerRadius(10)
                   .overlay(
                       RoundedRectangle(cornerRadius: 15)
                           .stroke(Color.white, lineWidth: 4)
                   )
                   .shadow(color: .gray.opacity(0.8), radius: 1, x: 1, y: 1)
               
        }
}

#Preview {
    AddPictureIcone(
        fontSize: 28,
        icone: "house",
        color: LinearGradient(
            gradient: Gradient(colors: [.purple, .purple.opacity(0.6)]),
            startPoint: .top,
            endPoint: .bottom
        ),
        width: 70,
        height: 70
    )
}
