//
//  PlayerInfoScreen.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct PlayerInfoScreen: View {

    let player: Player

    var body: some View {
        ZStack {
            ImageView(image: Image("playerBg"))
            PlayerCardView(player: player)
                .padding(.top, 68)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PlayerInfoScreen(player: Player())
}
