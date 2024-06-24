//
//  Assignment1App.swift
//  Assignment1
//
//  Created by Raja on 13/06/24.
//

import SwiftUI

@main
struct Assignment1App: App {

    @AppStorage("userID") var userID: String = ""

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if !userID.isEmpty {
                    DashboardScreen(userName: userID)
                } else {
                    LogInScreen()
                }
            }
        }
    }
}
