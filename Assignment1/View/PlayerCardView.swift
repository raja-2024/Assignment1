//
//  PlayerCardView.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct PlayerCardView: View {
    @Binding var player: Player
    
    private let widthDiff: CGFloat = 40
    private let heightDiff: CGFloat = 40
    @State private var isBackCardTapped = false
    var body: some View {
        GeometryReader { reader in
            ZStack {
                // Back View or Player Detail Card
                PlayerCardBackView(player: $player)
                    .frame(width: reader.size.width / 2 + (1.5*widthDiff),
                           height: reader.size.height / 2 + heightDiff)
                    .offset(x: reader.size.width / 2 - (2*widthDiff + 12),
                            y: reader.size.height / 2 - (2*heightDiff))
                    .onTapGesture {
                        withAnimation {
                            isBackCardTapped = true
                        }
                    }
                    .zIndex(isBackCardTapped ? 1 : 0)
                // Front view or Player Image and name
                PlayerFrontCardView(player: $player)
                    .frame(width: reader.size.width / 2 + (1.5*widthDiff),
                           height: reader.size.height / 2 + heightDiff)
                    .padding(16)
                    .onTapGesture {
                        withAnimation {
                            isBackCardTapped = false
                        }
                    }
            }
        }
    }
}

#Preview {
    PlayerCardView(player: .constant(Player()))
}
