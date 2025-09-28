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
            GroupBox("Saved Items", content: {
                Text("You've saved 5 items")
            })
            
            GroupBox(content:{
                Text("You've saved 5 items")
            }, label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            })
            
            GroupBox(content:{
                Text("You've saved 5 items")
            }, label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            })
            .groupBoxStyle(.saved)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
