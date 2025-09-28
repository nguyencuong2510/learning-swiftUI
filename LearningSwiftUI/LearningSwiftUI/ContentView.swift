//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var gradientColor: [Color] {
        [.blue, .red]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                
                ScrollView {
                    Text("Content")
                        .bold()
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    TextField("Some Textfiekld", text: .constant(""))
                    
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    }
                }
                .foregroundStyle(.white)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
//            .ignoresSafeArea(.keyboard, edges: .bottom)
            .navigationTitle("Home")
        }
    }
}

extension ContentView {
    var backgroundView: some View {
        LinearGradient(colors: gradientColor, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
//            .ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
