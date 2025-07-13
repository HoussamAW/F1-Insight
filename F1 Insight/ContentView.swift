//
//  ContentView.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//

import SwiftUI


struct ContentView: View {
    let items = Array(1...6)

    let columns = [
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Image("F1.svg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100,height: 100)
                    Text("Insight")
                        .font(.caption)
                        .italic()
                        .foregroundStyle(.white)
                        .offset(x:-15,y:10)
                    Spacer()
                }
                
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(items, id: \.self) { item in
                        NavigationLink {
                            Text("Détail pour l’élément \(item)")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(.ultraThinMaterial)
                                    .frame(height: 200)
                                    .shadow(radius: 50)
                              
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
                
              Spacer()
                Text("Copyright © 2025 HAW. Tous droits réservés.")
                    .font(.caption)
            }
            .padding()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
