//
//  RaceModel.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import Foundation

//struct for displaying upcoming races
struct RaceModel: Identifiable {
    let id = UUID()
    let name: String
    let date: Date
}

let races = [
    RaceModel(name: "Brazil", date: Date.makeDate("2025-11-09")),
    RaceModel(name: "Las Vegas", date: Date.makeDate("2025-11-22")),
    RaceModel(name: "Qatar", date: Date.makeDate("2025-11-30"))
        ]
