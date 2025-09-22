//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var color: Color = .blue

    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(color)
                .overlay {
                    Image(.logo)
                        .padding()
                        .foregroundStyle(.tint)
                        .frame(width: 80, height: 80)
                        .background(color)
                        .clipShape(Circle())
                }

            ColorPicker(selection: $color, supportsOpacity: false) {
                Label("Color Pallete", systemImage: "paintpalette")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
