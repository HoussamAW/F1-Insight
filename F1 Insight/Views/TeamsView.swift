//
//  EcuriesView.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import SwiftUI

struct TeamsView: View {
    @Environment(\.openWindow) private var openWindow
    @State private var img: String = ecurieLogo.first?.carModel ?? "RedbullCar"
    @State private var logos: String = ecurieLogo.first?.logo ?? "RedBullRacing"
    @State private var teamName: String = ecurieLogo.first?.name ?? "Red Bull Racing"
//    @State private var pilotImg1: String = ecurieLogo.first?.pilot1 ?? ""
//    @State private var pilotImg2: String = ecurieLogo.first?.pilot2 ?? ""


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
                            Image(logos)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 56, height: 56)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(teamName)
                                    .font(.headline.weight(.semibold))
                                    .italic()

//                                HStack(spacing: 8) {
//                                    if !pilotImg1.isEmpty {
//                                        Image(pilotImg1)
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 32, height: 32)
//                                            .clipShape(Circle())
//                                    }
//                                    if !pilotImg2.isEmpty {
//                                        Image(pilotImg2)
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 32, height: 32)
//                                            .clipShape(Circle())
//                                    }
//                                }
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
                            Text(teamName)
                                .font(.title2.weight(.semibold))
                                .italic()
                            Text("Tap a team below to update this preview.")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }

                        Spacer()

                        Image(img)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 420, maxHeight: 220)
                            .glassBackgroundEffect()
                    }
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(ecurieLogo) { logo in
                            Button {
                                withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                                    img = logo.carModel
                                    logos = logo.logo
                                    teamName = logo.name
//                                    pilotImg1 = logo.pilot1
//                                    pilotImg2 = logo.pilot2
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

//                                    HStack(spacing: 6) {
//                                        if !logo.pilot1.isEmpty {
//                                            Image(logo.pilot1)
//                                                .resizable()
//                                                .scaledToFill()
//                                                .frame(width: 22, height: 22)
//                                                .clipShape(Circle())
//                                        }
//                                        if !logo.pilot2.isEmpty {
//                                            Image(logo.pilot2)
//                                                .resizable()
//                                                .scaledToFill()
//                                                .frame(width: 22, height: 22)
//                                                .clipShape(Circle())
//                                        }
//
//                                        Spacer()
//                                    }

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

#Preview {
    TeamsView()
}
