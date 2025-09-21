//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = PeopleViewModel()
    
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
                Text("Loading...")
                    .padding()
            } else {
                Text(vm.people.isEmpty ? "No User" : "Manager to get \(vm.people.count) users")
            }
            Button(action: {
                vm.fetchUser()
            }) {
                Text("Fetch some people")
            }
        }
    }
    
   
}

#Preview {
    ContentView()
}
