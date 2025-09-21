//
//  CustomLoadingView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct CustomLoadingView: View {
    
    @Binding var isLoading: Bool
    
    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text("Finish loading.")
        }
    }
}

#Preview {
    CustomLoadingView(isLoading: .constant(false))
}
