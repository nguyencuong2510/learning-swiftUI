//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            LinearGradient(
//                stops: [
//                    .init(color: .black, location: 0.2),
//                    .init(color: .mint, location: 0.5)
//                ],
//                startPoint: .top,
//                endPoint: .bottom
//            )
            
//            RadialGradient(colors: [
//                .black,
//                .mint,
//                .purple,
//                .blue
//            ], center: .top, startRadius: 50, endRadius: 100)
            
//            Text("Hello")
//                .padding()
//                .background(
//                    AngularGradient(colors: [.red, .yellow, .green, .blue, .purple], center: .center, angle: .degrees(180))
//                )
            
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple], center: .center, angle: .degrees(180))
                .mask {
                    Text("Hello")
                        .bold()
                        .font(.largeTitle)
                }
        }
    }
}

#Preview {
    ContentView()
}
