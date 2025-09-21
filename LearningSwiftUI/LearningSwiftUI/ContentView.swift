//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false

    var body: some View {
        VStack {
            CustomLoadingView(isLoading: $isLoading)

            Button(action: {
                isLoading.toggle()
            }) {
                Text("\(isLoading ? "Stop" : "Start") Loading")
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
