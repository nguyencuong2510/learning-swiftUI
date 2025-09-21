//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = LoginViewModel()

    var body: some View {
        switch vm.currentSate {
        case .loading:
            ProgressView()
        case .notLoggedIn:
            LoginView(user: $vm.user, didTap: {
                self.vm.login()
            })
        case .loggedIn:
            LoggedInView(didTap: {
                self.vm.logout()
            })
        }
    }
}

#Preview {
    ContentView()
}
