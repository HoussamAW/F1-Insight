//
//  ContentView.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//
//  ContentView.swift

import SwiftUI
import RealityKit

struct ContentView: View {
    @State private var showHomeView = false
    var body: some View {
        Group {
            if showHomeView {
                HomeView()
            } else {
                VStack(alignment: .center) {
                    Image("F1.svg")
                        .resizable()
                        .frame(width: 700, height: 170)

                    Text("Insights")
                        .font(.system(size: 50, weight: .bold))
                        .italic()
                        .offset(x: 170)
                        .padding(.bottom, 150)

                    Button {
                        showHomeView = true
                    } label: {
                        Text("Enter in the lab")
                            .padding()
                            .font(.system(size: 30, weight: .bold))
                            .italic()
                            .glassBackgroundEffect()
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
