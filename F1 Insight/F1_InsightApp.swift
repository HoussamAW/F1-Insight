//
//  F1_InsightApp.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//

import SwiftUI


@main
struct F1_InsightApp: App {
    @State private var showDice = false
    var body: some Scene {

        // Main window
        WindowGroup(id: "main") {
           ContentView()
        }

        // Second window for 3DObject
        WindowGroup(id: "car-detail") {
            RealityContentView(showDice: $showDice)
        }.windowStyle(.plain)
        
        WindowGroup(id: "car-stats") {
            CarStatsView()
                
        }
            
            
       
    }
}
