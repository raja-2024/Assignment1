//
//  EditPlayerInfoScreen.swift
//  Assignment1
//
//  Created by Raja on 24/06/24.
//

import SwiftUI

struct EditPlayerInfoScreen: View {

    @Binding var player: Player
    @Binding var isPresented: Bool
    @State private var selectedCountry: String = "India"
    @State private var testDebue = Date.now
    @State private var oneDayDebue = Date.now
    @State private var t20Debue = Date.now
    @State private var role = ""
    @State private var countryLists: [String] = ["India", "Australia", "England"]

    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 16) {
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
                player.role = role
                player.internationalDebut.test = testDebue.formatted()
                player.internationalDebut.odi = oneDayDebue.formatted()
                player.internationalDebut.t20 = t20Debue.formatted()
                player.country = selectedCountry
                isPresented = false
            }
        }
    }
}

#Preview {
    EditPlayerInfoScreen(player: .constant(Player()), isPresented: .constant(false))
}
