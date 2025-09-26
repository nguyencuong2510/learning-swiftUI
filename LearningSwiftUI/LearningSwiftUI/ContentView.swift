//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var progressSecondExamp: Double = 0
    @State var progressThirdExamp: Double = 0
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            
//            VStack {
//                ProgressView()
//                Text("Loading...")
//            }
//            
//            VStack {
//                ProgressView("Example 2", value: progressSecondExamp)
//                Button {
//                    withAnimation {
//                        progressSecondExamp += 0.1
//                    }
//                } label: {
//                    Text("Incream")
//                }
//
//            }
//            
//            VStack {
//                ProgressView("Example 3", value: progressThirdExamp, total: 100)
//                Button {
//                    withAnimation {
//                        progressThirdExamp += 5
//                    }
//                } label: {
//                    Text("Incream third")
//                }
//
//            }
//            
//            VStack {
//                ProgressView(value: progressThirdExamp, total: 100) {
//                    Label("UploadProgress \(progressThirdExamp)", systemImage: "globe")
//                        .frame(maxWidth: .infinity, alignment: .center)
//                }
//                Button {
//                    withAnimation {
//                        progressThirdExamp += 5
//                    }
//                } label: {
//                    Text("Incream third")
//                }
//
//            }
            
            VStack {
                ProgressView() {
                    Label("UploadProgress", systemImage: "globe")
                }
                .progressViewStyle(.roundPro)
                
            }
    
    
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
