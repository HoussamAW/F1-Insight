//
//  RealityContentView.swift
//  F1 Insight
//
//  Created by Houssam on 29/10/2025.
//
import SwiftUI
import RealityKit
import RealityKitContent

struct RealityContentView: View {
    @State private var rotationX: Double = 0
    @State private var rotationY: Double = 0
    @State private var lastRotationX: Double = 0
    @State private var lastRotationY: Double = 0

    @State private var scale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0

    @Binding var showDice: Bool
    var body: some View {
        let rotateDrag = DragGesture()
            .onChanged { value in
                rotationY = lastRotationY + value.translation.width
                rotationX = lastRotationX - value.translation.height
            }
            .onEnded { _ in
                lastRotationX = rotationX
                lastRotationY = rotationY
            }

        let pinchZoom = MagnificationGesture()
            .onChanged { value in
                scale = lastScale * value
            }
            .onEnded { _ in
                lastScale = scale
            }

        ZStack {
            Model3D(named: "dice") { model in
                model
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .rotation3DEffect(.degrees(rotationX), axis: (x: 1, y: 0, z: 0))
            .rotation3DEffect(.degrees(rotationY), axis: (x: 0, y: 1, z: 0))
            .scaleEffect(scale)
            .gesture(
                rotateDrag.simultaneously(with: pinchZoom))
            
        }.padding(.bottom,70)
            .frame(width: 600,height: 600)
       
    }
}
#Preview {
    RealityContentView(showDice: .constant(false))
      
}
