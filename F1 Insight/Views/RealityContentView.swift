//
//  RealityContentView.swift
//  F1 Insight
//
//  Created by Houssam on 29/10/2025.
//
import SwiftUI
import RealityKit

struct RealityContentView: View {
    @State private var pitch: Double = 0
    @State private var yaw: Double = 0
    @State private var lastPitch: Double = 0
    @State private var lastYaw: Double = 0
    @State private var scale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0
    @State private var selectedTeam = ecurieLogo
    @State private var index = 0
    @Binding var showDice: Bool
    var body: some View {
        let rotateDrag = DragGesture()
            .onChanged { value in
                yaw = lastYaw + value.translation.width
                pitch = lastPitch - value.translation.height
            }
            .onEnded { _ in
                lastPitch = pitch
                lastYaw = yaw
            }

        let pinchZoom = MagnificationGesture()
            .onChanged { value in
                scale = lastScale * value
            }
            .onEnded { _ in
                lastScale = scale
            }

        ZStack {
            Model3D(named: selectedTeam[index].arModel) { model in
                model
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .rotation3DEffect(.degrees(pitch), axis: (x: 1, y: 0, z: 0))
            .rotation3DEffect(.degrees(yaw), axis: (x: 0, y: 1, z: 0))
            .scaleEffect(scale)
            .gesture(rotateDrag.simultaneously(with: pinchZoom))
        }
    }
}
#Preview {
    RealityContentView(showDice: .constant(false))
}
