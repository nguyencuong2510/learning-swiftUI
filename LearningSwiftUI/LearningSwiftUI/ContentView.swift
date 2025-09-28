//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                VStack {
                    Text("Quanlity")
                    ControlGroup {
                        increment
                        decrement
                    }
                }
                
                ControlGroup {
                    increment
                    decrement
                }
                .controlGroupStyle(.quantity)
                
                VStack {
                    Text("Quanlity")
                    ControlGroup {
                        increment
                        decrement
                    }
                }
                .controlGroupStyle(.navigation)
                
                    
                
            }
            .padding()
        }
    }
}

extension ContentView {
    var increment: some View {
        Button {
            
        } label: {
            Label("Increment", systemImage: "plus")
        }
    }
    
    var decrement: some View {
        Button {
            
        } label: {
            Label("decrement", systemImage: "minus")
        }
    }
}


#Preview {
    ContentView()
}
