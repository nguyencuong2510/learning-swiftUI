//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    
    let rotation: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
            .offset(
                x: rotation == 0 ? 0 : UIScreen.main.bounds.width,
                y: rotation == 0 ? 0 : UIScreen.main.bounds.height
            )
    }
}

extension AnyTransition {
    static var rotation: AnyTransition {
        modifier(active: RotateViewModifier(rotation: 180), identity: RotateViewModifier(rotation: 0))
    }
    
    static func rotation(rotation: Double) -> AnyTransition {
        modifier(active: RotateViewModifier(rotation: rotation), identity: RotateViewModifier(rotation: 0))
    }
    
    static var rotateOn: AnyTransition {
        return AnyTransition.asymmetric(
            insertion: .rotation,
            removal: move(edge: .leading)
        )
    }
}

struct AnyTransitionBootcamp: View {
    @State private var showRectangle: Bool = false

    var body: some View {
        VStack {
            Spacer()

            if showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(.rotateOn)
//                    .transition(.move(edge: .leading))
            }

            Spacer()

            Text("Click Me!")
                .withDefaultButtonFormating()
                .padding(.horizontal, 40)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.showRectangle.toggle()
                    }
                }
        }
        .padding()
    }
}

#Preview {
    AnyTransitionBootcamp()
}
