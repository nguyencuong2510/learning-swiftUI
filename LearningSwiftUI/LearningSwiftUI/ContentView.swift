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
//            Text("Hello, world!")
//                .padding()
//                .overlay {
//                    RoundedRectangle(cornerRadius: 8)
//                        .stroke(.blue, lineWidth: 5)
//                }
            
            ZStack {
                Circle()
                    .strokeBorder(
                        AngularGradient(
                            gradient: Gradient(colors: [.red, .yellow, .red]),
                            center: .center,
                            endAngle: .degrees(360)
                        ),
                        lineWidth: 50
                    )
                    .padding()
                
                Text("100%")
            }

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
