//
//  ReservationView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct ReservationView: View {
    @ObservedObject var uiSettings = UiSettings.shared

    var body: some View {
        Text("Réservation")
            .font(.custom(uiSettings.customFontName, size: 16))
    }
}

#Preview {
    ReservationView()
}
