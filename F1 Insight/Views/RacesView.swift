//
//  RacesView.swift
//  F1 Insight
//
//  Created by Houssam on 23/11/2025.
//

import SwiftUI

struct RacesView: View {
    @Environment(\.openWindow) private var openWindows
    var body: some View {
            VStack(alignment:.leading) {
                HStack {
                    HStack(spacing: 8) {
                        Image("F1.svg")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 56, height: 56)
                        
                        Text("Replay")
                            .font(.title3.weight(.semibold))
                            .italic()
                            .tracking(2)
                     
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .glassBackgroundEffect()
                  
                    
                }.padding(.bottom,20)
                
                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(raceReplay) { race in
                        Button {
                            openWindows(id: race.idWindow)
                        } label: {
                            VStack(alignment: .center, spacing: 12) {
                                VStack(alignment: .center) {
                                    Image(race.raceModel)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:300,height: 80)
                                    Text(race.name)
                                        .font(.title3.weight(.semibold))
                                        .multilineTextAlignment(.center)
                                }
                            }
                            .frame(maxWidth: .infinity,
                                   minHeight: 180,
                                   alignment: .leading)
                            .padding(20)
                            .glassBackgroundEffect()
                        }
                        .buttonStyle(.plain)
                    }
                }
               
                
                Spacer()
                
            }.padding()
        }
    }
