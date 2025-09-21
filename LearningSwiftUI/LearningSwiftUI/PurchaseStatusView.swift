//
//  PurchaseStatusView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct PurchaseStatusView: View {
    
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        VStack {
            Image(systemName: vm.hasPurchased ? "lock.open" : "lock")
                .font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
            Text("the user \(vm.hasPurchased ? "has" : " hasn't ") unlocked his feature")
        }
    }
}

#Preview {
    PurchaseStatusView()
}
