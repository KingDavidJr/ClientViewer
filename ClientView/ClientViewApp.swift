//
//  ClientViewApp.swift
//  ClientView
//
//  Created by David Amedeka on 3/22/23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            return true
        }
    }

@main
struct ClientViewApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { URL in
                    print(URL)
                    // clientview://
                }
        }
    }
}

extension Color {
    
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let bckground = Color("BackgroundColor")
    let purpleColor = Color("PurpleColor")
    let holderColor = Color("HolderColor")
}
