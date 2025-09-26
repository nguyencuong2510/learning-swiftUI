//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            
            HStack {
                Spacer()
                
                Text("Name: ")
                    .bold()
                Text("Cuongnv")
            }
            
            HStack {
                
                Text("Name: ")
                    .bold()
                Text("Cuongnv")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 0) {
                Text("Name: ")
                    .bold()
                    .background(.red)
                
                Spacer(minLength: 50)
                    .frame(width: 50)
                    .background(.gray)
                
                Text("Cuongnv")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
            }
        }
    }
}

#Preview {
    ContentView()
}
