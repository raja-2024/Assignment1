//
//  LoginView.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct LoginView: View {

    @Binding var userName: String
    @Binding var password: String

    var body: some View {
        ZStack {
            BlurView()
            VStack {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(spacing: 16) {
                    InputField(placeHolder: "UserName",
                               text: $userName,
                               image: Image(systemName: "person.crop.circle.fill"))
                    SecureInputField(placeHolder: "Password",
                               text: $password,
                               image: Image(systemName: "key.fill"))
                }
                .padding(.bottom, 8)
            }
            .padding(16)
        }
        .padding(16)
    }
}

#Preview {
    LoginView(userName: .constant("Username"), password: .constant("Password"))
}
