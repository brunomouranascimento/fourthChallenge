//
//  fourthChallengeApp.swift
//  fourthChallenge
//
//  Created by Bruno Nascimento on 08/04/22.
//

import SwiftUI

@main
struct fourthChallengeApp: App {
    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.backgroundColor = .white
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
