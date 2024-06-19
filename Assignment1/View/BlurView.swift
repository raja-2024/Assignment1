//
//  BlurView.swift
//  Assignment1
//
//  Created by Raja on 13/06/24.
//

import SwiftUI

struct BlurView: View {

    private let cornerRadius: CGFloat = 25

    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .background(
                Material.ultraThin,
                in: RoundedRectangle(cornerRadius: cornerRadius)
            )
    }
}

#Preview {
    BlurView()
}
