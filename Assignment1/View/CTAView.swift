//
//  CTAView.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct CTAView: View {

    let title: String
    let action: () -> Void

    var body: some View {
        ZStack {
            BlurView()
            Button {
                action()
            } label: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
        }
        .frame(height: 55)
    }
}

#Preview {
    CTAView(title: "LogIn", action: {})
}
