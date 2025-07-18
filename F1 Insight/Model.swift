//
//  Model.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import Foundation
import SwiftUI


//struct pour les diffentes ecuries
struct EcuriesModel: Identifiable {
    var id =  UUID()
    var name: String // nom de l'ecurie
    var logo: String // logo de l'ecurie
    var carModel: String //image de la voiture
}

//struct pour le menu principal
struct Items: Identifiable {
    var id = UUID()
    var item: Array<Any>
    var menuName: String
    var destination: AnyView
}


