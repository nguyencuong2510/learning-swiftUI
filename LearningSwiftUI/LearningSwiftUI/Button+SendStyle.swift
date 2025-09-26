//
//  Button+SendStyle.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 26/9/25.
//

import Foundation

import SwiftUI

struct SendButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane")
                .symbolVariant(.fill)
            Divider()
            configuration.label
        }
        .frame(maxWidth: 150, minHeight: 55)
        .background(.mint)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

extension ButtonStyle where Self == SendButtonStyle {
    static var send: SendButtonStyle { .init() }
}
