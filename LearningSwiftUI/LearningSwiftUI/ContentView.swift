//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Cuongnv button style")
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.red)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.red)
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.red)
                    .buttonStyle(.borderless)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.red)
                    .buttonStyle(.plain)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                    
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.red)
                    .buttonStyle(.automatic)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                }
                VStack {
                    Text("Cuongnv Button Control Size")
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.mini)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.small)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.regular)
                    
                    Button("Cuongnv", action: {
                        print("cuon1")
                    })
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
