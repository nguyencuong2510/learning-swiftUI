//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 16/9/25.
//

import SwiftUI
import Combine

enum Screen {
    case one
    case two
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .one
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

@main
struct LearningSwiftUIApp: App {
    
    @StateObject var router = TabRouter()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $router.screen) {
                ScreenOne()
                    .badge(10)
                    .tag(Screen.one)
                    .tabItem {
                        Label("Screen 1", systemImage: "calendar")
                    }
                    .environmentObject(router)
                
                
                ScreenTwo()
                    .tag(Screen.two)
                    .tabItem {
                        Label("Screen 2", systemImage: "house")
                    }
                    .environmentObject(router)
            }
        }
    }
}
