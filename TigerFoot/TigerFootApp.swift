//
//  TigerFootApp.swift
//  TigerFoot
//
//  Created by Nicolae Chivriga on 24/11/2024.
//

import SwiftUI

@main
struct TigerFootApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoadingView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
