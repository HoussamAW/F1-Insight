//
//  RaceReplayModel.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import SwiftUI

//struct to displaying the races replay
struct RaceReplayModel: Identifiable {
    let id = UUID()
    var raceModel: String
    var name: String
    var destination: AnyView
    var idWindow: String
}

let raceReplay = [
    RaceReplayModel(raceModel: "melbourne", name: "Melbourne", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplayModel(raceModel: "shanghai", name: "Shanghai", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplayModel(raceModel: "suzuka", name: "Suzuka", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplayModel(raceModel: "bahrain", name: "Bahrain", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplayModel(raceModel: "jeddah", name: "Jeddas", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplayModel(raceModel: "miami", name: "Miami", destination: AnyView(ReplayView()), idWindow: "replayView")
]
