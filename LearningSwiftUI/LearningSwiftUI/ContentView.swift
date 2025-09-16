//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Text("Hello, world!")
//                .background(.blue)
//
//            Text("Hello, world!")
//                .background(.blue)
//
//            Text("Hello, world!")
//                .background(.blue)
//        }
//        .frame(
//            maxWidth: .infinity,
//            minHeight: 100,
//            alignment: .topLeading
//        )
//        .background(.mint)
//        .clipped()
        
        Image("logo")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(alignment: .bottomTrailing) {
                Text("New Video")
                    .foregroundColor(.white)
                    .bold()
                    .font(.callout)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.red)
                    .clipShape(Capsule())
                    .offset(x: 25, y: 10)
            }
        
    }
}

#Preview {
    ContentView()
}
