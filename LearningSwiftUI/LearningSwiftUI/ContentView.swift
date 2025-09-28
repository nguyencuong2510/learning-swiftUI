//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            descriptionTxtView
            textEditView
            submitBtn
        }
        .padding()
    }
    
    var textEditView: some View {
        TextEditor(text: $text)
            .frame(height: 250)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4)
            }
    }
    
    var descriptionTxtView: some View {
        Text("Description")
    }
    
    var submitBtn: some View {
        Button {
            print("user tapped text \(text)")
        } label: {
            Text("Submit")
        }
    }
}

#Preview {
    ContentView()
}
