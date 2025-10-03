//
//  HStackExample.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 3/10/25.
//

import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack(spacing: 32) {
            Group {
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
            }
            
            Group {
                Text("Cuognnv")
                Text("Cuognnv")
                Text("Cuognnv")
            }
            
        
//            ForEach(1...10, id: \.self) { item in
//                Text("Item \(item)")
//                    .fixedSize()
//            }
        }
        .fixedSize()
    }
}

#Preview {
    HStackExample()
}
