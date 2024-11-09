//
//  UiSettings.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

class UiSettings: ObservableObject {
    
    static let shared = UiSettings()
    
    //FONT
    let customFontName: String = "Avenir-Medium"
    @Published var customFontColor1 = Color.black
    @Published var customFontColor2 = Color(red: 0.596, green: 0.596, blue: 0.596)
    
    //COULEURS

    //Couleur pour utiliser dans le backgrounds
    @Published var customBackColor0 = Color.white
    @Published var customBackColor1 = Color.white
    @Published var customBackColor1_old = Color(red: 0.984, green: 0.984, blue: 0.984)
    @Published var customBackColor2 = Color.white
    
    //Couleurs principales de l'application
    @Published var customMainColor1 = Color(red: 0.214, green: 0.452, blue: 0.585)
    @Published var customMainColor2 = Color(red: 0.116, green: 0.717, blue: 0.782)
    
    @Published var customBlueColor1 = Color(red: 0.214, green: 0.452, blue: 0.585)
    @Published var customBlueColor2 = Color(red: 0.116, green: 0.717, blue: 0.782)
    @Published var customBrownColor1 = Color(red: 0.436, green: 0.308, blue: 0.144)
    @Published var customBrownColor2 = Color(red: 0.684, green: 0.603, blue: 0.392)

    
    
}

