//
//  TextFieldExample.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 28/9/25.
//

import SwiftUI

struct TextFieldExample: View {
    var body: some View {
        VStack {
            TextField("Name", text: .constant(""), prompt: Text("Inter name"))
            
            TextField(text: .constant("")) {
                Text("password")
            }

            SecureField("Password", text: .constant(""), prompt: Text("Enter your password"))
        }
    }
}

#Preview {
    TextFieldExample()
}
