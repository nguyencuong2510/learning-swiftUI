//
//  SendButton.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 26/9/25.
//

import SwiftUI

struct SendButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text("Send Mail")
        })
        .buttonStyle(.send)
    }
}

#Preview {
    SendButton(action: {})
}
