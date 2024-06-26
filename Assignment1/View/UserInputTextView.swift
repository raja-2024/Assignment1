//
//  UserInputTextView.swift
//  Assignment1
//
//  Created by Raja on 24/06/24.
//

import SwiftUI

struct UserInputTextView: View {
    var title: String
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.caption)
            VStack {
                TextEditor(text: $text)
                    .foregroundStyle(.black)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 8)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray.opacity(0.3), lineWidth: 1)
                    )
            }
        }
    }
}

#Preview {
    UserInputTextView(title: "UserName", text: .constant(""))
}
