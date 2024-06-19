//
//  ImageView.swift
//  Assignment1
//
//  Created by Raja on 15/06/24.
//

import SwiftUI

struct ImageView: View {
    let image: Image
    var enableScalingAnimation = true

    @State private var isAnimating = false

    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .scaleEffect(isAnimating ? 2 : 1.0)
            .onAppear() {
                if enableScalingAnimation {
                    withAnimation(.linear(duration: 60).repeatForever(autoreverses: true)) {
                        isAnimating = true
                    }
                }
            }
    }
}

#Preview {
    ImageView(image: Image("login"))
}
