//
//  ZStackExample.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 3/10/25.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .symbolVariant(.fill)
                .foregroundStyle(.yellow)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

#Preview {
    ZStackExample()
}
