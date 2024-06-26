//
//  Player.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import UIKit

class Player: ObservableObject, Decodable, Identifiable {
    let id = UUID()
    var country: String
    var name: String
    var age: Int
    var role: String
    var battingStyle: String
    var bowlingStyle: String
    var internationalDebut: InternationalDebut
    var bio: String

    enum CodingKeys: String, CodingKey {
        case name, 
             age,
             role, 
             battingStyle = "batting_style",
             bowlingStyle = "bowling_style",
             internationalDebut = "international_debut",
             bio,
             country
    }

    init() {
        self.name = ""
        self.age = 0
        self.role = ""
        self.battingStyle = ""
        self.bowlingStyle = ""
        self.internationalDebut = InternationalDebut()
        self.bio = ""
        self.country = ""
    }
}

class InternationalDebut: ObservableObject, Decodable {
    var test: String
    var odi: String
    var t20: String

    init() {
        self.test = ""
        self.odi = ""
        self.t20 = ""
    }
}
