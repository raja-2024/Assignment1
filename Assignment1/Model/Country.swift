//
//  Country.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import Foundation

class Country: ObservableObject, Identifiable {
    let id: String = UUID().uuidString
    var name: String
    @Published var players: [Player] = []

    init(name: String) {
        self.name = name
        self.players = existingPalyers
    }

    var existingPalyers: [Player] {
        if let url = Bundle.main.url(forResource: name, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                return try JSONDecoder().decode([Player].self, from: data)
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("JSON file not found")
        }
        return []
    }
}
