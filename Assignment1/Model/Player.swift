//
//  Player.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import UIKit

struct Player: Decodable, Identifiable {
    let id = UUID()
    let country: String
    let name: String
    let age: Int
    let role: String
    let battingStyle: String
    let bowlingStyle: String
    let internationalDebut: InternationalDebut
    let bio: String

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
        self.name = "Virat"
        self.age = 30
        self.role = "Batsman"
        self.battingStyle = "Right Hand"
        self.bowlingStyle = "Right Hand"
        self.internationalDebut = InternationalDebut()
        self.bio = "Virat Kohli is one of the most prolific batsmen in modern cricket. Known for his aggressive playing style and consistency, he has set numerous records and is considered one of the greatest batsmen of all time."
        self.country = "India"
    }
}

struct InternationalDebut: Decodable {
    let test: String
    let odi: String
    let t20: String?

    init() {
        self.test = "20 June 2011"
        self.odi = "18 August 2008"
        self.t20 = "12 June 2010"
    }
}
