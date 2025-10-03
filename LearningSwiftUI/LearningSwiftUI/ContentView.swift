//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
}

extension Person {
    static var data: [Person] = [
        .init(firstName: "Billy", lastName: "Bob"),
        .init(firstName: "Billy", lastName: "May"),
        .init(firstName: "Jill", lastName: "Jan"),
        .init(firstName: "Alex", lastName: "Omn")
    ]
}

struct ContentView: View {
    
    @State private var people: [Person] = []
    
    var body: some View {
        VStack {
            ForEach(people) { item in
                PersionView(item: item)
            }
        }
        .onAppear {
            self.people = Person.data
        }
    }
}

#Preview {
    ContentView()
}
