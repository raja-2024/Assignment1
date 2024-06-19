//
//  DashboardScreen.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct DashboardScreen: View {
    let userName: String
    @State private var countries: [Country] = []

    var body: some View {
        List {
            ForEach(countries) { country in
                Section(header: Text(country.name)) {
                    ForEach(country.players) { player in
                        NavigationLink(destination: PlayerInfoScreen(player: player)) {
                            Text(player.name)
                        }
                    }
                }
            }
        }
        .navigationTitle("Player List")
        .onAppear {
            let india = Country(name: "India")
            let australia = Country(name: "Australia")
            let england = Country(name: "England")
            countries = [india, australia, england]
        }
    }
}

#Preview {
    DashboardScreen(userName: "User")
}
