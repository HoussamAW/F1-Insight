//
//  ViewModel.swift
//  F1 Insight
//
//  Created by Houssam Dine Abdoul Wahab on 01/04/2026.
//

import SwiftUI
import Observation

@Observable
final class ViewModel {
    let teams: [TeamModel]
    var selectedTeam: TeamModel

    init() {
        let fallback = TeamModel(
            name: "Ferrari",
            logo: "Ferrari",
            carModel: "FerrariCar",
            arModel: "Ferrari"
        )
        self.teams = ecurieLogo
        self.selectedTeam = ecurieLogo.first ?? fallback
    }

    func selectTeam(_ team: TeamModel) {
        selectedTeam = team
    }
}
