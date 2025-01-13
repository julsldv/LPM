//
//  LanguageManager.swift
//  LPM
//
//  Created by Julien PORTOLAN on 12/01/2025.
//



import SwiftUI

// 🌍 Gestionnaire de langue global
class LanguageManager: ObservableObject {
    @Published var isFrench: Bool {
        didSet {
            // ✅ Sauvegarde du choix de langue dans UserDefaults
            UserDefaults.standard.set(isFrench, forKey: "isFrench")
        }
    }

    // 🔄 Langue actuelle
    var currentLanguage: String {
        isFrench ? "Français" : "English"
    }

    // ✅ Initialisation avec la langue sauvegardée ou Anglais par défaut
    init() {
        // 🔎 Vérifie si une langue a déjà été sélectionnée, sinon anglais par défaut
        self.isFrench = UserDefaults.standard.object(forKey: "isFrench") as? Bool ?? false
    }

    // 🌐 Gestion des traductions
    func localizedText(for key: String) -> String {
        let translations: [String: [String: String]] = [
            // 🏠 HomeView
            "welcome_message": [
                "Français": "Grâce à l'app LPM, vous pouvez",
                "English": "With the LPM app, you can"
            ],
            "feature_1": [
                "Français": "Consulter vos performances locatives",
                "English": "Check your rental performance"
            ],
            "feature_2": [
                "Français": "Réserver vos séjours propriétaires",
                "English": "Book your owner stays"
            ],
            "feature_3": [
                "Français": "Rester informé des nouveautés",
                "English": "Stay updated with the latest news"
            ],
            "feature_4": [
                "Français": "Obtenir des réductions sur des séjours avec LPM",
                "English": "Get discounts on stays with LPM"
            ],
            "feature_5": [
                "Français": "Nous contacter",
                "English": "Contact us"
            ],

            // 📖 BookingView
            "booking_title": [
                "Français": "Réservation directe",
                "English": "Direct Booking"
            ],
            "booking_description": [
                "Français": "Ici, vous pouvez directement réserver vos séjours.",
                "English": "Here, you can directly book your stays."
            ],
            "open_button": [
                "Français": "Ouvrir",
                "English": "Open"
            ],

            // 🎠 CarrouselView
            "carousel_card1_title": [
                "Français": "Munissez-vous de votre identifiant et de votre mot de passe pour accéder à votre portail propriétaire",
                "English": "Use your login and password to access your owner portal"
            ],
            "carousel_card1_button": [
                "Français": "Portail propriétaires",
                "English": "Owner Portal"
            ],
            "carousel_card2_title": [
                "Français": "Vous pouvez directement réserver depuis le bouton suivant.",
                "English": "You can directly book from the button below."
            ],
            "carousel_card2_button": [
                "Français": "Site de réservation",
                "English": "Booking Site"
            ],

            // ℹ️ InfosView
            "contact_us": [
                "Français": "Nous contacter",
                "English": "Contact Us"
            ],
            "customer_service": [
                "Français": "Service client",
                "English": "Customer Service"
            ],
            "accounting_service": [
                "Français": "Service comptabilité",
                "English": "Accounting Service"
            ],
            "get_estimate": [
                "Français": "Obtenir une estimation",
                "English": "Get an Estimate"
            ],
            "settings": [
                "Français": "Paramètres",
                "English": "Settings"
            ],
            "share_app": [
                "Français": "Partager LPM",
                "English": "Share LPM"
            ],
            "version": [
                "Français": "Version",
                "English": "Version"
            ],
            
            // 🏢 PartenairesView
            "title_partenaire": [
                "Français": "Chez LPM, votre logement est publié sur",
                "English": "At LPM, your property is listed on"
            ]
        ]
        return translations[key]?[currentLanguage] ?? key
    }
}
