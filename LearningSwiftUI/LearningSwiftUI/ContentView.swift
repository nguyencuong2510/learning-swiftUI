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
            Text("Hello, world! Nguyen van cuong")
            
            Divider()
                .frame(width: 100)
        }
        .padding()
        .background(.yellow)
        
        Group {
            Text("Hello, world!")
            Divider()
        }
        .background(.mint)
        
        HStack {
            Text("Hello, world!")
            
            Divider()
                .frame(height: 50)
            
            Image(systemName: "lock")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
