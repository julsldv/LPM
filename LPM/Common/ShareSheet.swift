//
//  ShareSheet.swift
//  LPM
//
//  Created by Julien PORTOLAN on 20/10/2024.
//

import Foundation
import SwiftUI

// Helper pour afficher la feuille de partage
struct ShareSheet: UIViewControllerRepresentable {
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

