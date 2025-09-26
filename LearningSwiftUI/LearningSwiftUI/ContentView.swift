//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var qualityExampleOne: Int = 0
    @State var qualityExampleTwo: Int = 0
    @State var qualityExampleThree: Int = 0
    @State var qualityExampleFour: Int = 0
    
    var body: some View {
        VStack {
            VStack {
                Group {
                    Text("Hello Every one \(qualityExampleOne)")
                    Stepper("Quanlity", value: $qualityExampleOne, in: 0...20, step: 1)
                }
            }
            
            VStack {
                Group {
                    Text("Hello Every one \(qualityExampleTwo)")
                    Stepper("", value: $qualityExampleTwo, in: 0...20, step: 1)
                        .labelsHidden()
                }
            }
            
            VStack {
                Group {
                    
                    Stepper(value: $qualityExampleThree, in: 0...20, step: 1) {
                        Text("🤣 Slices \(qualityExampleThree)")
                            .foregroundStyle(.black)
                    }
                }
            }
            
            VStack {
                Group {
                    
                    Stepper(value: $qualityExampleFour, in: 0...20, step: 1) {
                        Text("🤣 Buggers \(qualityExampleFour)")
                            .foregroundStyle(.red)
                    } onEditingChanged: { editingStarted in
                        print("value change \(editingStarted) quanlity is \(qualityExampleFour)")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
