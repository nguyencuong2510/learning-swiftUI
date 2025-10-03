//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var hasChangeValue = false
    private let range: ClosedRange<Int> = 0...50
    
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(range, id: \.self) { item in
                            createTxt(with: item)
                        }
                    }
                    .padding(.bottom, 50)
                    .overlay(alignment: hasChangeValue ? .bottomTrailing : .bottomLeading ) {
                        HStack {
                            Button {
                                if let firstIndex = range.min() {
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                    }
                                    hasChangeValue = false
                                }
                            } label: {
                                Image(systemName: "arrow.backward")
                            }
                            
                            Button {
                                if let lastIndex = range.max() {
                                    withAnimation {
                                        proxy.scrollTo(lastIndex)
                                    }
                                    hasChangeValue = true
                                }
                            } label: {
                                Image(systemName: "arrow.forward")
                            }
                            
                        }
                        .symbolVariant(.circle.fill)
                        .font(.title.weight(.black))
                    }
                }
            }
        }
    }
}

private extension ContentView {
    func createTxt(with index: Int) -> some View {
        Text("\(index)")
            .padding()
            .frame(maxWidth: .infinity)
            .background(.mint, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            .padding(.horizontal, 8)
    }
}

#Preview {
    ContentView()
}
