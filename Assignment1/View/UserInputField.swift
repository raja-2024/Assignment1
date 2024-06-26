//
//  UserInputField.swift
//  Assignment1
//
//  Created by Raja on 24/06/24.
//

import SwiftUI

struct UserInputField: View {
    var title: String
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.caption)
            VStack {
                TextField("", text: $text)
                    .foregroundStyle(.black)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 8)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray.opacity(0.3), lineWidth: 1)
                            .frame(minHeight: 35)
                    )
            }
        }
    }
}

#Preview {
    UserInputField(title: "UserName", text: .constant(""))
}
