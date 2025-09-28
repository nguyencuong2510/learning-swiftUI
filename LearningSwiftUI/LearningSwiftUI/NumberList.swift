//
//  NumberList.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 28/9/25.
//

import SwiftUI

struct NumberList: View {
    var body: some View {
        NavigationView {
            List(0...20, id: \.self) { item in
                Text("item \(item)")
            }
            .navigationTitle("Numbers")
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: 0) {
                plusBtn
                    .padding(.trailing)
            }
            
            .safeAreaInset(
                edge: .trailing,
                alignment: .bottom,
                spacing: 0) {
                slideBar
            }
        }
    }
}


extension NumberList {
    var plusBtn: some View {
        Button {
            
        } label: {
            Image(systemName: "plus")
                .symbolVariant(.circle.fill)
                .font(.system(size: 44, weight: .bold, design: .rounded))
        }
    }
    
    var slideBar: some View {
        VStack(alignment: .leading) {
            ForEach(["Home", "Features", "My Profile", "Settings"], id: \.self) { item  in
                Text(item)
                    .bold()
                    .padding()
            }
        }
    }
}

#Preview {
    NumberList()
}
