//
//  RealityContentView.swift
//  F1 Insight
//
//  Created by Houssam on 29/10/2025.
//
import SwiftUI
import RealityKit

struct RealityContentView: View {
    @Environment(ViewModel.self) private var viewModel
    @State private var pitch: Double = 0
    @State private var yaw: Double = 0
    @State private var lastPitch: Double = 0
    @State private var lastYaw: Double = 0
    @State private var scale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0

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
            Model3D(named: viewModel.selectedTeam.arModel, bundle: .main) { model in
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
