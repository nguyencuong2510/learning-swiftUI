//
//  LoginViewModel.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import Combine
import Foundation

struct User: Equatable {
    var userName: String = ""
    var password: String = ""
    
    mutating func reset() {
        userName = ""
        password = ""
    }
}

final class LoginViewModel: ObservableObject {
    
    enum CurrentState {
        case loading
        case notLoggedIn
        case loggedIn
    }
    
    @Published var currentSate: CurrentState = .notLoggedIn
    @Published var user: User = .init()

    func login() {
        guard !user.userName.isEmpty && !user.password.isEmpty else {
            return
        }

        currentSate = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.currentSate = .loggedIn
        })
    }

    func logout() {
        self.currentSate = .notLoggedIn
        self.user.reset()
    }
}
