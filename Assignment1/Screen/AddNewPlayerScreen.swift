//
//  AddNewPlayerScreen.swift
//  Assignment1
//
//  Created by Raja on 24/06/24.
//

import SwiftUI

struct AddNewPlayerScreen: View {

    @Binding var countries: [Country]
    @Binding var isPresented: Bool
    @State private var selectedCountry: String = "India"
    @State private var testDebue = Date.now
    @State private var oneDayDebue = Date.now
    @State private var t20Debue = Date.now
    @State private var role = ""
    @State private var countryLists: [String] = ["India", "Australia", "England"]

    @State private var player: Player = Player()

    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Add New Player")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                Picker("Select Country", selection: $selectedCountry) {
                    ForEach(countryLists, id: \.self) {
                        Text($0)
                    }
                }
                UserInputField(title: "Player Name", text: $player.name)
                UserInputField(title: "Age", text: $role)
                UserInputField(title: "Role", text: $player.role)
                UserInputField(title: "Batting Style", text: $player.battingStyle)
                UserInputField(title: "Bowling Style", text: $player.bowlingStyle)

                UserInputTextView(title: "Bio", text: $player.bio)

                DatePicker(selection: $testDebue,
                           in: ...Date.now,
                           displayedComponents: .date) {
                    Text("Test Debut")
                }

                DatePicker(selection: $testDebue,
                           in: ...Date.now,
                           displayedComponents: .date) {
                    Text("One Day Debut")
                }

                DatePicker(selection: $testDebue,
                           in: ...Date.now,
                           displayedComponents: .date) {
                    Text("T20 Debut")
                }
            }
            CTAView(title: "Save") {
                if let index = countries.firstIndex(where: {$0.name == selectedCountry}) {
                    player.role = role
                    player.internationalDebut.test = testDebue.formatted()
                    player.internationalDebut.odi = oneDayDebue.formatted()
                    player.internationalDebut.t20 = t20Debue.formatted()
                    player.country = selectedCountry
                    countries[index].players.append(player)
                }
                isPresented = false
            }
        }
    }
}

#Preview {
    AddNewPlayerScreen(countries: .constant([]), isPresented: .constant(false))
}
