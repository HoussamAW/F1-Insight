//
//  MenuModel.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import SwiftUI

//struct for the main menu
struct MenuItems: Identifiable {
    var id = UUID()
    var item: Array<Any>
    var images: String
    var menuName: String
    var destination: AnyView
}

let items = [
    MenuItems(item: [1], images: "person.3.fill", menuName: "Teams", destination: AnyView(EcuriesView())),
    MenuItems(item: [2], images: "flag.checkered.2.crossed", menuName: "Races", destination: AnyView(RacesView())),
    MenuItems(item: [3], images: "chart.xyaxis.line", menuName: "Insights", destination: AnyView(InsightsView()))
]
