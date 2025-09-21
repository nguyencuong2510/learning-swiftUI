//
//  PeopleViewMOdel.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import Foundation
import Combine

final class PeopleViewModel: ObservableObject {
    
    @Published var people: [String] = []
    @Published var isLoading = false
    
    
    func fetchUser() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.people = ["Nguyen", "van", "cuong"]
            self.isLoading = false
        })
    }
    
}
