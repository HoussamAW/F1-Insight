//
//  EcuriesView.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import SwiftUI
import RealityKit

struct TeamsView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(ViewModel.self) private var viewModel


    private let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 120), spacing: 20)
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 32) {

                    HStack(alignment: .center, spacing: 24) {
                        HStack(spacing: 16) {
                            Image(viewModel.selectedTeam.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 56, height: 56)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(viewModel.selectedTeam.name)
                                    .font(.headline.weight(.semibold))
                                    .italic()
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 14)
                        .glassBackgroundEffect()
                        .offset(x:30)

                        Spacer()

                        Button {
                            openWindow(id: "car-detail")
                        } label: {
                            HStack(spacing: 12) {
                                Image(systemName: "cube.transparent")
                                    .font(.title3)
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("View Car in 3D")
                                        .font(.subheadline.weight(.semibold))
                                    Text("Immersive team experience")
                                        .font(.caption2)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            .frame(minWidth: 180, alignment: .leading)
                            .padding(16)
                            .glassBackgroundEffect()
                        }
                        .buttonStyle(.plain)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Discover the Teams")
                            .font(.largeTitle.weight(.bold))

                        Text("Select an F1 team to preview its car, identity and drivers.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    HStack(spacing: 24) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Selected Team")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                            Text(viewModel.selectedTeam.name)
                                .font(.title2.weight(.semibold))
                                .italic()
                            Text("Tap a team below to update this preview.")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }

                        Spacer()

                        Model3D(named: viewModel.selectedTeam.arModel, bundle: .main) { model in
                            model
                                .resizable()
                                .scaledToFit()
                                .rotation3DEffect(.degrees(90), axis: (x: 0, y: 1, z: 0))
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(maxWidth: 420, maxHeight: 220)
                     
                        .glassBackgroundEffect()
                    }
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.teams) { logo in
                            Button {
                                withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                                    viewModel.selectTeam(logo)
                                }
                            } label: {
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack {
                                        Image(logo.logo)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 32, height: 32)

                                        Spacer()
                                    }

                                    Text(logo.name)
                                        .font(.subheadline.weight(.semibold))
                                        .lineLimit(1)

                                    Text("Tap to explore this car.")
                                        .font(.caption2)
                                        .foregroundStyle(.secondary)
                                }
                                .padding(14)
                                .frame(maxWidth: .infinity, minHeight: 110, alignment: .leading)
                                .glassBackgroundEffect()
                            }
                            .buttonStyle(.plain)
                        }
                    }

                    Spacer()
                    
                    HStack {
                        Spacer()
                        Text("Teams · Cars · Drivers · 3D Experience")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                }
                .padding(40)
            }
        }
    }
}
