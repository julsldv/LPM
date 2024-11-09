//
//  HomeTabView.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//
/*
import SwiftUI

struct HomeTabView: View {
    
    @ObservedObject var uiSettings = UiSettings.shared
    @State var tabSelection = 2 // 2 correspond à l'onglet "Accueil" par défaut
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            ScrollView {
            // Affiche la vue en fonction de l'onglet sélectionné
            switch tabSelection {
            case 1:
                ProprietairesView()
            case 2:
                HomeView()
            case 3:
                VitrineView()
            case 4:
                ReservationView()
            default:
                HomeView()
            }
            Spacer()
            }
            // Ajoute la barre d'onglets personnalisée
            CustomTabBar(selection: $tabSelection)
       
        }
        .background(uiSettings.customBackColor0)
 
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
*/
