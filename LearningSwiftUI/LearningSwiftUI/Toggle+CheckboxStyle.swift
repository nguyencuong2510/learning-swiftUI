//
//  Toggle+CheckboxStyle.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 26/9/25.
//

import SwiftUI

struct ToggleCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        .tint(.black)
    }
}

extension ToggleStyle where Self == ToggleCheckboxStyle {
    static var checkbox: ToggleCheckboxStyle { .init() }
}
