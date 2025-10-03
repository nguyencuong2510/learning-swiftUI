//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    private let items = (1...30).map { "Items \($0) "}
    private let items2 = (31...50).map { "Items \($0) "}
    
    private let colums: [GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(50))
        
//        GridItem(.adaptive(minimum: 50, maximum: 100)),
//        GridItem(.adaptive(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            hView
        }
    }
}

extension ContentView {
    var vGrid: some View {
        LazyVGrid(columns: colums, alignment: .leading, spacing: 32, pinnedViews: .sectionHeaders) {
            Section {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 50)
                        .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
            } header: {
                Text("Section 1")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.yellow)
                    .padding()
            }
            
            Section {
                ForEach(items2, id: \.self) { item in
                    Text(item)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 50)
                        .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
            } header: {
                Text("Section 2")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.red)
                    .padding()
            }
            
        }
    }
}

extension ContentView {
    var hView: some View {
        LazyHGrid(rows: colums, alignment: .bottom, spacing: 32, pinnedViews: .sectionHeaders) {
            Section {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 50)
                        .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
            } header: {
                Text("Section 1")
                    .frame(maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(.yellow)
                    .padding(.vertical, 0)
            }
            
            Section {
                ForEach(items2, id: \.self) { item in
                    Text(item)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 50)
                        .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
            } header: {
                Text("Section 2")
                    .frame(maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(.red)
                    .padding(.vertical, 0)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
