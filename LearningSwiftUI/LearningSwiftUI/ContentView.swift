//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
//            LazyVStack(alignment: .leading, spacing: 32, pinnedViews: .sectionFooters) {
//                Section {
//                    ForEach(0...20, id: \.self) { item in
//                        Text("item \(item)")
//                    }
//                } header: {
//                    Text("first Section")
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(.mint)
//                }
//
//                Section {
//                    ForEach(21...50, id: \.self) { item in
//                        Text("item \(item)")
//                    }
//                } header: {
//                    Text("first Section")
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(.red)
//                }
//                
//            }
            
            LazyHStack(alignment: .top, spacing: 32, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(0...20, id: \.self) { item in
                        Text("item \(item)")
                    }
                } header: {
                    Text("first Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                }

                Section {
                    ForEach(21...50, id: \.self) { item in
                        Text("item \(item)")
                    }
                } header: {
                    Text("first Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.red)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
