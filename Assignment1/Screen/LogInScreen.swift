//
//  LoginView.swift
//  Assignment1
//
//  Created by Raja on 13/06/24.
//

import SwiftUI

struct LogInScreen: View {

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var enableLogIn: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                ImageView(image: Image("login"))
                VStack {
                    LoginView(userName: $username, password: $password)
                        .frame(height: 260)
                    CTAView(title: "LogIn") {
                        enableLogIn = !username.isEmpty && !password.isEmpty
                    }
                    .padding(16)
                }
            }
            .navigationDestination(isPresented: $enableLogIn) {
                DashboardScreen(userName: username)
            }
            .onDisappear(perform: resetCred)
            .ignoresSafeArea()
        }
    }

    private func resetCred() {
        username = ""
        password = ""
    }
}

#Preview {
    LogInScreen()
}
