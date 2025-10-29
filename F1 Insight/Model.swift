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
    var menuName: String
    var destination: AnyView
}



//struct for displaying upcoming races
struct Race: Identifiable {
    let id = UUID()
    let name: String
    let date: Date
}

