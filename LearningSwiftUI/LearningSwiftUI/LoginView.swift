//
//  LoginView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var vm: LoginViewModel
    
    var body: some View {
        VStack {
            
            TextField("UserName", text: $vm.user.userName, prompt: Text("UserName"))
            SecureField("UserName", text: $vm.user.password, prompt: Text("Password"))
            
            Button(action: {
                self.vm.login()
            }, label: {
                Text("Login")
            })
        }
        .padding(.horizontal)
        .textFieldStyle(.roundedBorder)
        .onChange(of: vm.user) { newValue in
            print("the user inputted: \(newValue)")
        }
        
    }
}

#Preview {
    LoginView(vm: .init())
}
