//
//  PlayerFrontCardView.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct PlayerFrontCardView: View {
    let player: Player

    var body: some View {
        ZStack {
            ZStack {
                BlurView()
                VStack(spacing: 0) {
                    GeometryReader { reader in
                        ImageView(image: Image(player.name),
                                  enableScalingAnimation: false)
                            .frame(width: reader.size.width,
                                   height: reader.size.height)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 24,
                                    bottomLeadingRadius: 2,
                                    bottomTrailingRadius: 2,
                                    topTrailingRadius: 24
                                )
                            )
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: -8) {
                            Text(player.name)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                            Text(player.role)
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundStyle(.white)
                        }
                        Spacer()
                    }
                    .padding(.leading, 6)
                }
                .padding(6)
            }
            .shadow(radius: 2, x: 8, y: 8)
        }
    }
}

#Preview {
    PlayerFrontCardView(player: Player())
}
