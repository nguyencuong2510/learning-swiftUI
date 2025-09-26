//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Link(destination: .init(string: "https://github.com")!) {
                Label {
                    Text("Hello Cuongnv")
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                        .background(.red)
                        .clipShape(Capsule())
                } icon: {
                    Image(systemName: "paintpalette")
                        .resizable()
                        .font(.largeTitle)
                        .frame(width: 70, height: 70)
                }
            }
            
            Label("Cuongnv thumbnail", systemImage: "paintpalette")
                .labelStyle(CapsuleStyle())
            
            Label("Cuongnv thumbnail", systemImage: "paintpalette")
                .labelStyle(StrongCapsuleStyle(color: .blue))
            
            Label("Cuongnv thumbnail", systemImage: "paintpalette")
                .labelStyle(.capsule)
            
            Label("Cuongnv thumbnail", systemImage: "paintpalette")
                .labelStyle(.strongCapsule(color: .pink))
                .labelStyle(.iconOnly)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
