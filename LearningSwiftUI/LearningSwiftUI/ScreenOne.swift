//
//  ScreenOne.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 28/9/25.
//

import SwiftUI
import Combine

struct ScreenOne: View {
    
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            VStack {
                Text("Screen 1")
                    .bold()
                    .foregroundStyle(.white)
                
                Button {
                    router.change(to: .two)
                } label: {
                    Text("go to Screen 2")
                        .bold()
                        .foregroundStyle(.white)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink)
        .clipped()
    }
}

#Preview {
    ScreenOne()
        .environmentObject(TabRouter())
}
