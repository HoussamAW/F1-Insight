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
    var name: String // name of the team
    var logo: String // logo of the team
    var carModel: String //image of the car
    var pilot1: String //image of driver number 1 of the team
    var pilot2: String //image of driver number 2 of the team
    
}

//struct for the main menu
struct Items: Identifiable {
    var id = UUID()
    var item: Array<Any>
    var images: String
    var menuName: String
    var destination: AnyView
}



//struct for displaying upcoming races
struct Race: Identifiable {
    let id = UUID()
    let name: String
    let date: Date
}

let items = [
    Items(item: [1], images: "person.3.fill", menuName: "Teams", destination: AnyView(EcuriesView())),
    Items(item: [2], images: "flag.checkered.2.crossed", menuName: "Races", destination: AnyView(PilotsView())),
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

func makeDate(_ string: String) -> Date {
    let formatter = DateFormatter()
       formatter.dateFormat = "yyyy-MM-dd"
       formatter.timeZone = .current
       return formatter.date(from: string) ?? Date()
}
