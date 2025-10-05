//
//  SyncView.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 5/10/25.
//

import SwiftUI

struct SyncView: View {
    
    @State var isSync = false
    
    var rotationAnimation: Animation {
        .easeOut(duration: 1)
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSync ? 360 : 0))
                .animation(rotationAnimation, value: isSync)
        }
        .onAppear {
            isSync = true
        }
    }
}

#Preview {
    SyncView()
}
