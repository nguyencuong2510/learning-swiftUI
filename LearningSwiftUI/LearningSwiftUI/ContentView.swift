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
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(.yellow)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(content: {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.white)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    })
                    .background(.yellow)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(content: {
                        
                        Circle()
                            .fill(.yellow.opacity(0.3))
                        
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.white)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    })
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(content: {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.green)
                            .font(.system(size: 32))
                            .offset(y: -2)
                        
                        Circle()
                            .fill(.mint)
                        
                    })
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(alignment: .top, content: {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.green)
                            .font(.system(size: 32))
                            .offset(y: -2)
                        
                    })
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .frame(width: 100, height: 100)
                    .background(content: {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.green)
                            .font(.system(size: 32))
                            .offset(y: -2)
                        
                        Circle()
                            .fill(.mint)
                        
                    })
                    .overlay(alignment: .bottom) {
                        Text("Subcriber")
                            .font(.footnote.weight(.bold))
                            .foregroundStyle(.white)
                            .padding(4)
                            .background(Capsule()
                                .fill(.red))
                    }
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .frame(width: 100, height: 100)
                    .background(content: {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.green)
                            .font(.system(size: 32))
                            .offset(y: -2)
                        
                        Circle()
                            .fill(.mint)
                        
                    })
                    .overlay(alignment: .bottom) {
                        Text("Subcriber")
                            .font(.footnote.weight(.bold))
                            .foregroundStyle(.white)
                            .padding(4)
                            .background(.ultraThickMaterial, in: Capsule())
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
