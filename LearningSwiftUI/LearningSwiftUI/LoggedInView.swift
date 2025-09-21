//
//  LoggedInView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct LoggedInView: View {
    @ObservedObject var vm: LoginViewModel

    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                self.vm.logout()
            }) {
                Text("Logout")
            }
        }
    }
}

#Preview {
    LoggedInView(vm: .init())
}
