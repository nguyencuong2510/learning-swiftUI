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
            Capsule(style: .circular)
                .fill(.blue)
                .frame(width: 100, height: 50)
            
            Capsule(style: .continuous)
                .frame(width: 100, height: 50)
                
            Circle()
                .frame(width: 50, height: 50)
            
            Ellipse()
                .frame(width: 50, height: 25)
            
            Rectangle()
                .frame(width: 50, height: 50)
                .cornerRadius(12)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 50)
            
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
