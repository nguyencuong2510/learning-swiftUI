//
//  PersionView.swift
//  LearningSwiftUI
//
//  Created by cuong nguyen on 3/10/25.
//

import SwiftUI

struct PersionView: View {
    
    let item: Person
    
    var body: some View {
        Text(item.firstName + " " + item.lastName)
    }
}

#Preview {
    PersionView(item: Person.data.first!)
}
