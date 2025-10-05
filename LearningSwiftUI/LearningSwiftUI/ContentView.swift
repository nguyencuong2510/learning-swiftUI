//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct AnimationConfig: Identifiable {
    
    var id = UUID()
    var animation: Animation
    var description: String
    
    static let options: [AnimationConfig] = [
        .init(animation: .easeInOut, description: "ease in out"),
        .init(animation: .easeIn, description: "ease in"),
        .init(animation: .easeOut, description: "ease out"),
        .init(animation: .linear, description: "linear"),
        
            .init(animation: .easeInOut(duration: 1.5), description: "ease in out"),
            .init(animation: .easeIn(duration: 1.5), description: "ease in"),
            .init(animation: .easeOut(duration: 1.5), description: "ease out"),
        .init(animation: .linear(duration: 1.5), description: "linear"),
        
            .init(animation: .linear(duration: 1.5).delay(0.5), description: "linear delay 1.5")
    ]
}

struct ContentView: View {
        
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 32) {
                ForEach(AnimationConfig.options) { item in
                    SyncView(config: item)
                }
            }
        }
    }
}


struct SyncView: View {
    
    @State var isSync = false
    let config: AnimationConfig
    
    var rotationAnimation: Animation {
        config.animation
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSync ? 360 : 0))
                .animation(rotationAnimation, value: isSync)
            
            Text(config.description)
        }
        .onAppear {
            isSync = true
        }
    }
}


#Preview {
    ContentView()
}
