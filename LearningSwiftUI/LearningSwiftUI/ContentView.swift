//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .black)
            
            Toggle(isOn: $isOn) {
                Text("Toggle light switch")
            }
            .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
