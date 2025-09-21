//
//  LoggedInView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct LoggedInView: View {
    
    var didTap: () -> Void
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                self.didTap()
            }) {
                Text("Logout")
            }
        }
    }
}

#Preview {
    LoggedInView(didTap: {})
}
