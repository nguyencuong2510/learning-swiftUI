//
//  ViewModifierBootcamp.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        return content
            .font(.subheadline)
            .foregroundStyle(.white)
            .frame(height:55)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func withDefaultButtonFormating() -> some View {
        modifier(DefaultButtonViewModifier())
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .withDefaultButtonFormating()
            
            Text("Hello, World 1!")
                .modifier(DefaultButtonViewModifier())
        }
    }
}

#Preview {
    ViewModifierBootcamp()
}
