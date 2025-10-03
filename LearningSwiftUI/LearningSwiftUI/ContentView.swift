//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

// MARK: - Models

/*
 This is model in project
 */
struct PersionModel {
    
}

// MARK: - Models Fake Data


// MARK: - ContentView
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    
    /// set model data
    /// - Parameter item: the persion info
    func set(_ item: PersionModel) {
        print("model persion")
    }
    
    
    /// The Val func get info
    /// - Parameter item: value input
    /// - Returns: valueoutput
    func getVal(item: Int) -> Int {
        return item
    }
}

#Preview {
    ContentView()
}
