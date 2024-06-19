//
//  InputField.swift
//  Assignment1
//
//  Created by Raja on 14/06/24.
//

import SwiftUI

struct InputField: View {
    
    let placeHolder: LocalizedStringKey
    @Binding var text: String
    let image: Image

    var body: some View {
        ZStack {
            BlurView()
            HStack {
                TextField("",
                          text: $text,
                          prompt:
                            Text(placeHolder)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                )
                .foregroundStyle(.white)
                .font(.title3)
                .multilineTextAlignment(.leading)
                .padding(16)
                image
                    .foregroundStyle(.white)
                    .padding(.trailing, 16)
            }
        }
    }
}

#Preview {
    InputField(placeHolder: "PlaceHolder",
               text: .constant(""),
               image: Image(systemName: "cross"))
}
