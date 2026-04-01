//
//  F1_InsightApp.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//

import SwiftUI

@main
struct F1_InsightApp: App {
    @State private var viewModel = ViewModel()

    var body: some Scene {
        
        // Main window
        WindowGroup(id: "main") {
            ContentView()
                .environment(viewModel)
        }
        .windowStyle(.plain)
        
        // Second window for 3DObject
        WindowGroup(id: "car-detail") {
            RealityContentView()
                .environment(viewModel)
        }
        .windowStyle(.plain)
        .defaultLaunchBehavior(.suppressed)
            .restorationBehavior(.disabled)
                
        // window for Replay
        WindowGroup(id: "replayView") {
            ReplayView()
                .environment(viewModel)
        }
        .windowStyle(.plain)
        .defaultLaunchBehavior(.suppressed)
            .restorationBehavior(.disabled)
        
    }
}
