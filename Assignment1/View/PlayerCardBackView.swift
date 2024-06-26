//
//  PlayerCardBackView.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct PlayerCardBackView: View {

    @Binding var player: Player

    var body: some View {
        ZStack {
            ZStack {
                BlurView()
                VStack(spacing: 16) {
                    GeometryReader { reader in
                        ImageView(image: Image(player.country))
                            .frame(width: reader.size.width, height: reader.size.height)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 25.0)
                            )
                    }
                    VStack {
                        HStack {
                            Text("Age")
                                .font(.caption)
                                .foregroundStyle(.white)
                            Spacer()
                            Text(player.age.description)
                                .font(.caption)
                                .foregroundStyle(.white)
                        }
                        HStack {
                            Text("Batting")
                                .font(.caption)
                                .foregroundStyle(.white)
                            Spacer()
                            Text(player.battingStyle)
                                .font(.caption)
                                .foregroundStyle(.white)
                        }
                        HStack {
                            Text("Bowling")
                                .font(.caption)
                                .foregroundStyle(.white)
                            Spacer()
                            Text(player.bowlingStyle)
                                .font(.caption)
                                .foregroundStyle(.white)
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.top, 16)
                            .padding(.bottom, 8)
                        Text(player.bio)
                            .font(.caption)
                            .foregroundStyle(.white)
                    }
                }
                .padding()
            }
            .shadow(radius: 2, x: 8, y: 8)
        }
    }
}

#Preview {
    PlayerCardBackView(player: .constant(Player()))
}
