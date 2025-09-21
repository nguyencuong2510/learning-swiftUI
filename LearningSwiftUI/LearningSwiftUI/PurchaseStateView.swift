//
//  PurchaseStateView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct PurchaseStateView: View {
    
    var body: some View {
       PurchaseStatusView()
    }
}

#Preview {
    PurchaseStateView()
        .environmentObject(PurchaseViewModel())
}
