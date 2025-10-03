//
//  VStackExample.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 3/10/25.
//

import SwiftUI

struct VStackExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            ForEach(1...10, id: \.self) { item in
                Text("Item \(item)")
            }
        }
    }
}

#Preview {
    VStackExample()
}
