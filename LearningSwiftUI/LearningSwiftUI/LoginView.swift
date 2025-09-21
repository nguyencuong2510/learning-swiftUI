//
//  LoginView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var user: User
    let didTap: () -> Void
    
    var body: some View {
        VStack {
            
            TextField("UserName", text: $user.userName, prompt: Text("UserName"))
            SecureField("UserName", text: $user.password, prompt: Text("Password"))
            
            Button(action: {
                self.didTap()
            }, label: {
                Text("Login")
            })
        }
        .padding(.horizontal)
        .textFieldStyle(.roundedBorder)
        .onChange(of: user) { newValue in
            print("the user inputted: \(newValue)")
        }
        
    }
}

#Preview {
    LoginView(user: .constant(.init()), didTap: {})
}
