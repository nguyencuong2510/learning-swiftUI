//
//  LayoutUIExample.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 3/10/25.
//

import SwiftUI

struct LayoutUIExample: View {
    
    @State var isMuiltyColumn = false
    
    private var columns: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: isMuiltyColumn ? 2 : 1)
    }
    
    var body: some View {
        ScrollView {
            Button {
                isMuiltyColumn.toggle()
            } label: {
                Image(systemName: isMuiltyColumn ?  "rectangle.grid.1x2" : "rectangle.grid.2x2")
                    .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            
            LazyVGrid(columns: columns, alignment: .trailing, spacing: 16) {
                
                ForEach(0...50, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(.mint)
                        .frame(height: isMuiltyColumn ? 100 : 250)
                }
                
                
            }
            .animation(.spring(), value: isMuiltyColumn)
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    LayoutUIExample()
}
