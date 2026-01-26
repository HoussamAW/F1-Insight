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
    var arModel: String
   
    
}

let ecurieLogo = [
    TeamModel(name: "RedBull Racing", logo: "RedBullRacing", carModel: "RedbullCar", arModel: "RedBull"),
    TeamModel(name: "Ferrari", logo: "Ferrari", carModel: "FerrariCar", arModel: "RedBull&"),
    TeamModel(name: "Kick Sauber", logo: "KickSauber", carModel: "KickSauberCar",arModel: "RedBull"),
    TeamModel(name: "Mclaren", logo: "Mclaren", carModel: "MclarenCar",arModel: "RedBullk"),
    TeamModel(name: "Williams", logo: "Williams", carModel: "WilliamCar", arModel: "RedBull"),
    TeamModel(name: "Mercedes", logo: "Mercedes", carModel: "MercedesCar", arModel: "RedBull"),
    TeamModel(name: "Aston Martin", logo: "AstonMartin", carModel: "AstonMartinCar", arModel: "RedBull"),
    TeamModel(name: "Haas", logo: "Haas", carModel: "HaasCar", arModel: "RedBull"),
    TeamModel(name: "Alpine", logo: "Alpine", carModel: "AlpineCar", arModel: "RedBull"),
    TeamModel(name: "Racing Bulls", logo: "RacingBulls", carModel: "RacingBullCar",arModel: "RedBull")
    
    ]






 





