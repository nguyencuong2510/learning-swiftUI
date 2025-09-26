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
//                .border(.red, width: 1)
//            
//            Text("Hello, world!")
//                .padding(4)
//                .border(.red, width: 1)
//            
//            Text("Hello, world!")
//                .padding(.leading, 40)
//                .border(.red, width: 1)
//            
//            Text("Hello, world!")
//                .padding(.vertical, 40)
//                .border(.red, width: 1)
//                .padding(20)
//                .border(.red, width: 1)
            
            VStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundStyle(.tint)
                
                Text("Nguyen van cuogn tesst How To Implement Padding SwiftUI (SwiftUI Padding, Padding SwiftUI, SwiftUI Padding Modifier)")
                    .frame(maxWidth: 200)
                    .foregroundStyle(.white)
                    .border(.red, width: 1)
            }
            .padding()
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .border(.red, width: 1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
