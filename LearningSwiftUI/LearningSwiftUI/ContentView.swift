//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var exampleOneCounter = 0
    @State var exampleTwoCounter = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                VStack {
                    Text("Number of times pressed: \(exampleOneCounter)")
                    Button {
                        exampleOneCounter += 1
                    } label: {
                        Text("Example 1 Increment")
                    }
                }
                
                VStack {
                    Text("Number of times pressed: \(exampleTwoCounter)")
                    Button(action: incrementTwo, label: {
                        Text("Example 2 Increment")
                    })
                }
                
                Group {
                    Button(role: .cancel, action: {
                        
                    }, label: {
                        Text("Cancel")
                    })
                    
                    Button(role: .destructive, action: {
                        
                    }, label: {
                        Text("Cancel")
                    })
                    
                    Button(role: .none, action: {
                        
                    }, label: {
                        Text("Cancel")
                    })
                }
                
                
                Button {
                    print("tapped")
                } label: {
                    Text("Press Me")
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .background(.red)
                        .tint(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Send Mail")
                }
                .buttonStyle(.send)
                
                SendButton {
                    print("tapped me")
                }
            }
        }
    }
}

extension ContentView {
    func incrementTwo() {
        exampleTwoCounter += 1
    }
}

#Preview {
    ContentView()
}
