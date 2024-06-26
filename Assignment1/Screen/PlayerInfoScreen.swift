//
//  PlayerInfoScreen.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct PlayerInfoScreen: View {

    @Binding var player: Player
    @State private var showEditPlayerScreen = false
    var body: some View {
        ZStack {
            ImageView(image: Image("playerBg"))
            PlayerCardView(player: $player)
                .padding(.top, 68)
        }
        .toolbar {
            Button("Edit", systemImage: "square.and.pencil") {
                showEditPlayerScreen = true
            }
        }
        .sheet(isPresented: $showEditPlayerScreen, content: {
            EditPlayerInfoScreen(player: $player, isPresented: $showEditPlayerScreen)
        })
        .ignoresSafeArea()
    }
}

#Preview {
    PlayerInfoScreen(player: .constant(Player()))
}
