//
//  ImmersiveView.swift
//  F1 Insight
//
//  Created by Houssam on 24/01/2026.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    @Binding var showDice:Bool
    var body: some View {
        RealityView { content, attachments in
            do {
                let room = try await Entity(named: "Garage")
                room.position = [0, 0, 0]
                content.add(room)

                if let panel = attachments.entity(for: "teamsPanel") {
                    panel.position = [0, 1.25, -1.3]
                    content.add(panel)
                }

            } catch {
                print(error)
            }
        } attachments: {
            Attachment(id: "teamsPanel") {
//                HomeView()
//                    .frame(width: 1200, height: 680)
//                    .glassBackgroundEffect()
                RealityContentView(showDice: $showDice)
            }
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView(showDice: .constant(false))
}

