//
//  PurchaseViewModel.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import Foundation
import Combine

final class PurchaseViewModel: ObservableObject {
    
    @Published var hasPurchased = false
    @Published var isLoading = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.isLoading = false
            self.hasPurchased = true
        })
    }
}
