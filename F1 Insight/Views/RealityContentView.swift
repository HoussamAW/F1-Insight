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
    @Environment(\.openWindow) private var openWindows
    @State private var scale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0
    @State private var indexTeam = ecurieLogo[0]
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
            Model3D(named: indexTeam.arModel) { model in
                model.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .rotation3DEffect(.degrees(rotationX), axis: (x: 1, y: 0, z: 0))
            .rotation3DEffect(.degrees(rotationY), axis: (x: 0, y: 1, z: 0))
            .scaleEffect(scale)
            .gesture(rotateDrag.simultaneously(with: pinchZoom))
            .onTapGesture {
                openWindows(id: "car-stats")
            }
            
//        HStack(spacing: 10) {
//            ForEach(ecurieLogo) { i in
//                Button {
//                    indexTeam = i
//                } label: {
//                    Image(i.logo)
//                        .resizable()
//                        .frame(width: 50,height: 50)
//                        .padding(10)
//                       
//                }.glassBackgroundEffect()
//
//            }.offset(y:150)
//        }.padding()
            
        }
    }
}
#Preview {
    RealityContentView(showDice: .constant(false))
      
}
