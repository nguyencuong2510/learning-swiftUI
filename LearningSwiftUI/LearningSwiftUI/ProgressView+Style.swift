//
//  ProgressView+Style.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 26/9/25.
//

import SwiftUI

struct RoundProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .tint(.white)
            .foregroundStyle(.white)
    }
}

extension ProgressViewStyle where Self == RoundProgressViewStyle {
    static var roundPro: RoundProgressViewStyle { .init() }
}
