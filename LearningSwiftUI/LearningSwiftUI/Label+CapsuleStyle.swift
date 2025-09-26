//
//  Label+CapsuleStyle.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 26/9/25.
//

import SwiftUI

struct CapsuleStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
            Label(configuration)
            .padding()
            .background(.red)
            .clipShape(Capsule())
    }
}

extension LabelStyle where Self == CapsuleStyle {
    static var capsule: CapsuleStyle { .init() }
    
    static func strongCapsule(color: Color) -> StrongCapsuleStyle {
        return StrongCapsuleStyle(color: color)
    }
}


struct StrongCapsuleStyle: LabelStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration.title
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .bold))
        } icon: {
            configuration.icon
        }
            .padding()
            .background(color)
            .clipShape(Capsule())
    }
}
