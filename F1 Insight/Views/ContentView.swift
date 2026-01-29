//
//  ContentView.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//
//  ContentView.swift

import SwiftUI
import RealityKit
struct ContentView:View {
    @Binding var showDice: Bool
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    @State private var immersiveOn = false
    var body: some View {
        if immersiveOn {
            HomeView()
        } else {
            VStack(alignment: .center) {
                
                Image("F1.svg")
                    .resizable()
                    .frame(width:700,height:170)
                Text("Insights")
                    .font(.system(size: 50, weight: .bold))
                    .italic()
                    .offset(x:170)
                    .padding(.bottom,150)
                
                
                
                Button {
                    Task {
                        if immersiveOn {
                            await dismissImmersiveSpace()
                            immersiveOn = false
                        } else {
                            let r = await openImmersiveSpace(id: "GarageImmersive")
                            if r == .opened {
                                immersiveOn = true
                            }
                        }
                    }
                } label: {
                    Text("Enter in the lab")
                        .padding()
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .glassBackgroundEffect()
                }  .buttonStyle(.plain)
                
            }
        }
    }
}

#Preview(windowStyle: .plain) {
  ContentView(showDice: .constant(false))
}
