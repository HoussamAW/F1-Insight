//
//  Model.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import Foundation
import SwiftUI


//struct for the different teams
struct EcuriesModel: Identifiable {
    var id =  UUID()
    var name: String
    var logo: String
    var carModel: String
    var pilot1: String
    var pilot2: String
    
}

//struct for the main menu
struct Items: Identifiable {
    var id = UUID()
    var item: Array<Any>
    var images: String
    var menuName: String
    var destination: AnyView
}

//struct to displaying the races replay
struct RaceReplay: Identifiable {
    let id = UUID()
    var raceModel: String
    var name: String
    var destination: AnyView
    var idWindow: String
}

//struct for displaying upcoming races
struct Race: Identifiable {
    let id = UUID()
    let name: String
    let date: Date
}

let items = [
    Items(item: [1], images: "person.3.fill", menuName: "Teams", destination: AnyView(EcuriesView())),
    Items(item: [2], images: "flag.checkered.2.crossed", menuName: "Races", destination: AnyView(RacesView())),
    Items(item: [3], images: "chart.xyaxis.line", menuName: "Insights", destination: AnyView(EcuriesView()))
]

let races: [Race] = [
        Race(name: "Brazil", date: makeDate("2025-11-09")),
        Race(name: "Las Vegas", date: makeDate("2025-11-22")),
        Race(name: "Qatar", date: makeDate("2025-11-30"))
    ]


let ecurieLogo = [
    EcuriesModel(name: "RedBull Racing", logo: "RedBullRacing", carModel: "RedbullCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Ferrari", logo: "Ferrari", carModel: "FerrariCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Kick Sauber", logo: "KickSauber", carModel: "KickSauberCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Mclaren", logo: "Mclaren", carModel: "MclarenCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Williams", logo: "Williams", carModel: "WilliamCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Mercedes", logo: "Mercedes", carModel: "MercedesCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Aston Martin", logo: "AstonMartin", carModel: "AstonMartinCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Haas", logo: "Haas", carModel: "HaasCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Alpine", logo: "Alpine", carModel: "AlpineCar", pilot1: "", pilot2: ""),
    EcuriesModel(name: "Racing Bulls", logo: "RacingBulls", carModel: "RacingBullCar", pilot1: "", pilot2: "")
    
    ]

let raceReplay = [
    RaceReplay(raceModel: "melbourne", name: "Melbourne", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplay(raceModel: "shanghai", name: "Shanghai", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplay(raceModel: "suzuka", name: "Suzuka", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplay(raceModel: "bahrain", name: "Bahrain", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplay(raceModel: "jeddah", name: "Jeddas", destination: AnyView(ReplayView()), idWindow: "replayView"),
    RaceReplay(raceModel: "miami", name: "Miami", destination: AnyView(ReplayView()), idWindow: "replayView")
    
]

let columns = [
    GridItem(.fixed(350), spacing: 30),
    GridItem(.fixed(350), spacing: 30),
    GridItem(.fixed(350), spacing: 30)
]

func makeDate(_ string: String) -> Date {
    let formatter = DateFormatter()
       formatter.dateFormat = "yyyy-MM-dd"
       formatter.timeZone = .current
       return formatter.date(from: string) ?? Date()
}



