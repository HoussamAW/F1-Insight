//
//  CarStatsView.swift
//  F1 Insight
//
//  Created by Houssam on 29/10/2025.
//

import SwiftUI
import Charts

struct CarStatsView: View {
    var body: some View {
        ZStack {
        VStack {
                Text("Stats")
                   
            Divider()
            
                VStack(alignment: .leading, spacing: 8) {
                    Text("Red Bull Racing")
                        .font(.headline)
                        .foregroundStyle(.red)

                    Group {
                        HStack {
                            Text("Points:")
                             
                            Spacer()
                            Text("482")
                        }
                        HStack {
                            Text("Victoires:")
                            Spacer()
                            Text("12")
                        }
                        HStack {
                            Text("Podiums:")
                            Spacer()
                            Text("18")
                        }
                        HStack {
                            Text("Pole positions:")
                            Spacer()
                            Text("10")
                        }
                        HStack {
                            Text("Tours les plus rapides:")
                            Spacer()
                            Text("9")
                        }
                        HStack {
                            Text("Pilotes:")
                            Spacer()
                            Text("Verstappen / Pérez")
                        }
                    }
                    .bold()
                    .font(.subheadline)
                    .foregroundStyle(.primary)
                    
                    Spacer()
                }
                .padding()
            }
    
        }
    }
}

#Preview {
    CarStatsView()
        .glassBackgroundEffect()
       
}
