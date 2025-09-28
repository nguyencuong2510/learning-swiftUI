//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .bold()
                .italic()
                .underline(true, color: .red)
            
            Text("Hello, world!")
                .foregroundStyle(.mint)
                .font(.largeTitle.weight(.black))
            
            Text("Hello, world!")
                .foregroundStyle(.blue)
                .font(.system(size: 12, weight: .bold, design: .rounded))
            
            Text(.now, style: .timer)
            
            Text(.now, style: .time)
            Text(.now, style: .date)
            
            Text(.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
            
            Text(72.4, format: .currency(code: "GBP"))
            Text(72.4, format: .currency(code: "USD"))
            Text(Date.now...Date.now.addingTimeInterval(3600))
            
            Text("view calender \(Image(systemName: "calendar")) here")
        }
       
    }
}

#Preview {
    ContentView()
}
