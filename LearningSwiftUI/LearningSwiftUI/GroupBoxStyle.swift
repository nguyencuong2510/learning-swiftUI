//
//  GroupBoxStyle.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 28/9/25.
//

import Foundation
import SwiftUI

struct GroupBoxSaveStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 16))
    }
}

extension GroupBoxStyle where Self == GroupBoxSaveStyle {
    static var saved: GroupBoxSaveStyle {.init()}
}
