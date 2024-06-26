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
    @State private var showAddNewPlayerScreen = false

    var body: some View {
        List {
            ForEach($countries) { $country in
                Section(header: Text(country.name)) {
                    ForEach($country.players) { $player in
                        NavigationLink(destination: PlayerInfoScreen(player: $player)) {
                            Text(player.name)
                        }
                    }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Text("Hi, \(userName)")
                    .font(.caption)
            }
            ToolbarItemGroup(placement: .topBarTrailing) {
                Button("Add New Player", systemImage: "plus") {
                    showAddNewPlayerScreen = true
                }
            }
        }
        .navigationTitle("Player List")
        .onAppear {
            if countries.isEmpty {
                let india = Country(name: "India")
                let australia = Country(name: "Australia")
                let england = Country(name: "England")
                countries = [india, australia, england]
            }
        }
        .sheet(isPresented: $showAddNewPlayerScreen, content: {
            AddNewPlayerScreen(countries: $countries, isPresented: $showAddNewPlayerScreen)
        })
    }
}

#Preview {
    DashboardScreen(userName: "User")
}
