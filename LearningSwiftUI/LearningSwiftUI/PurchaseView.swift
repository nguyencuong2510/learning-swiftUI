//
//  PurchaseView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var purchaseVM: PurchaseViewModel
    
    var body: some View {
        if purchaseVM.isLoading {
            ProgressView()
        } else {
            Button(action: {
                purchaseVM.purchase()
            }, label: {
                Text("Purchase Me")
            })
            .disabled(purchaseVM.hasPurchased)
            .opacity(purchaseVM.hasPurchased ? 0.5 : 1)
        }
       
    }
}

#Preview {
    PurchaseView()
        .environmentObject(PurchaseViewModel())
}
