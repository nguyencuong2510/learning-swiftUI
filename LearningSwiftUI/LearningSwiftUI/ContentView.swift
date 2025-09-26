//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSelected = false
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            
//            Group {
//                Toggle("Turn me on?", isOn: $isSelected)
//                Text(isSelected ? "I am turn on" : "I am turn off")
//            }
//            
//            Group {
//                Toggle("", isOn: $isSelected)
//                    .labelsHidden()
//                Text(isSelected ? "I am turn on" : "I am turn off")
//            }
            
//            Group {
//                Toggle(isOn: $isSelected, label: {
//                    Label(isSelected ? "is on" : "is off", systemImage: "lightbulb")
//                        .symbolVariant(isSelected ? .fill : .none)
//                })
//                
//            }
//            
//            Group {
//                Toggle(isOn: $isSelected, label: {
//                    Label(isSelected ? "is on" : "is off", systemImage: "lightbulb")
//                        .symbolVariant(isSelected ? .fill : .none)
//                })
//                .toggleStyle(.button)
//            }
//            
//            Group {
//                Toggle(isOn: $isSelected, label: {
//                    Label(isSelected ? "is on" : "is off ", systemImage: "lightbulb")
//                        .symbolVariant(isSelected ? .fill : .none)
//                })
//                .toggleStyle(.checkbox)
//            }
            
            Group {
                Toggle("", isOn: $isSelected)
                    .toggleStyle(.checkbox)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
