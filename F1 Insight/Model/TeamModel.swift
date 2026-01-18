//
//  Model.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import Foundation
import SwiftUI


//struct for the different teams
struct TeamModel: Identifiable {
    var id =  UUID()
    var name: String
    var logo: String
    var carModel: String
    var pilot1: String
    var pilot2: String
    
}

let ecurieLogo = [
    TeamModel(name: "RedBull Racing", logo: "RedBullRacing", carModel: "RedbullCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Ferrari", logo: "Ferrari", carModel: "FerrariCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Kick Sauber", logo: "KickSauber", carModel: "KickSauberCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Mclaren", logo: "Mclaren", carModel: "MclarenCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Williams", logo: "Williams", carModel: "WilliamCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Mercedes", logo: "Mercedes", carModel: "MercedesCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Aston Martin", logo: "AstonMartin", carModel: "AstonMartinCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Haas", logo: "Haas", carModel: "HaasCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Alpine", logo: "Alpine", carModel: "AlpineCar", pilot1: "", pilot2: ""),
    TeamModel(name: "Racing Bulls", logo: "RacingBulls", carModel: "RacingBullCar", pilot1: "", pilot2: "")
    
    ]






 





