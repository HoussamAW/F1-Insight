//
//  HomeView.swift
//  F1 Insight
//
//  Created by Houssam on 18/07/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var race = "Belgium"
    @State private var racingDate = " 25 - 27 July"
    @State private var currentDate = Date()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let items = [
        Items(item: [1], menuName: "Ecurie", destination: AnyView(EcuriesView())),
        Items(item: [2], menuName: "Pilots", destination: AnyView(EcuriesView())),
        Items(item: [3], menuName: "News",   destination: AnyView(EcuriesView()))
    ]

    let columns = [
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30)
    ]
    
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM - HH:mm"
            return formatter
        }()
    
   
    
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
                
                Divider()
                
                HStack(spacing:30) {
                    Spacer()
                    Text("Next Race: ")
                        .italic()
                    
                    Text("\(race)")
                        .bold()
                     
                    
                    Text("\(racingDate)")
                        .italic()
                    
             Spacer()
                    Image("TagHeuerLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50,height: 50)
                    Text(dateFormatter.string(from: currentDate))
                                .font(.title2)
                                .padding()
                                .onReceive(timer) { input in
                                    currentDate = input
                                }
                     
            
                    Spacer()
                }
                
                Divider()
            
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(items) { item in
                        NavigationLink {
                            item.destination
                        } label: {
                            ZStack {
                                VStack {
                                    Text(item.menuName)
                                        .bold()
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundStyle(.ultraThinMaterial)
                                        .frame(height: 200)
                                        .shadow(radius: 50)
                                }
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }.offset(y:80)
                
                Spacer()
                
                Text("Copyright © 2025 HAW. Tous droits réservés.")
                    .font(.caption)
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
