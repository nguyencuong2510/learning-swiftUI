//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    struct User {
        var userName: String = ""
        var password: String = ""
    }
    
    @State private var user: User = .init()
    @FocusState var inputFocused: Bool
    
    var body: some View {
        VStack {
            userName
            password
            submitButton
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .textInputAutocapitalization(.never)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(action: resignKeyboard) {
                    Text("Done")
                }
            }
        }
        .onSubmit(of: .text, submit)
    }
}

extension ContentView {
    var userName: some View {
        TextField("userName", text: $user.userName, prompt: Text("UserName"))
            .textContentType(.username)
            .focused($inputFocused)
    }
    
    var password: some View {
        SecureField("Password", text: $user.password, prompt: Text("Password"))
            .textContentType(.password)
            .focused($inputFocused)
            .submitLabel(.done)
    }
    
    var submitButton: some View {
        Button(action: submit) {
            Text("Submit")
        }

    }
    
    func submit() {
        resignKeyboard()
        print("the user tapped submit button")
    }
    
    func resignKeyboard() {
        if #available(iOS 15, *) {
            inputFocused = false
        } else {
            dissmissKeyboard()
        }
    }
}

#Preview {
    ContentView()
}

extension View {
    func dissmissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
