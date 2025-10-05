//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isGreen = false
    @State var isMinimized = false
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 8)
                .fill(isGreen ? .green : .blue)
                .scaleEffect(isMinimized ? 0.5 : 1)
                .animation(.easeInOut, value: isGreen)
                .animation(.spring.delay(0.5).speed(0.2), value: isMinimized)
            
            Button(isGreen ? "Green" : "Blue") {
                withAnimation {
                    isGreen.toggle()
                }
        
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button(isMinimized ? "maximize" : "maximized") {
//                withAnimation {
                    isMinimized.toggle()
//                }
        
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
