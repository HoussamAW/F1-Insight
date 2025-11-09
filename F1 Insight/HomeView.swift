//
//  HomeView.swift
//  F1 Insight
//
//  Created by Houssam on 18/07/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var currentDate = Date()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var nextRace: Race? {
        races
            .filter {
                $0.date >= Date()
            }
            .sorted {
                $0.date < $1.date
            }
            .first
    }
    
    let columns = [
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30),
        GridItem(.fixed(350), spacing: 30)
    ]
    
    //For the time of day
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM - HH:mm"
        return formatter
    }()
    
    //For the date of the next races
    let raceDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "us_US")
        formatter.dateFormat = "EEEE d MMMM yyyy"
        return formatter
    }()
    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 32) {
                    HStack(alignment: .center, spacing: 24) {
                        HStack(spacing: 8) {
                            Image("F1.svg")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 56, height: 56)
                            
                            Text("Insight")
                                .font(.title3.weight(.semibold))
                                .italic()
                                .tracking(2)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .glassBackgroundEffect()
                        
                        Spacer()
                        
                        
                        Group {
                            if let race = nextRace {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Next Race")
                                        .font(.footnote)
                                        .foregroundStyle(.secondary)
                                    
                                    Text(race.name)
                                        .font(.headline.weight(.semibold))
                                    
                                    Text(raceDateFormatter.string(from: race.date))
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                            } else {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Season Finished")
                                        .font(.headline.weight(.semibold))
                                    Text("Come back for the next season")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        .padding(16)
                        .glassBackgroundEffect()
                        
                        
                        HStack(spacing: 12) {
                            Image("TagHeuerLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            
                            Text(dateFormatter.string(from: currentDate))
                                .font(.headline.monospacedDigit())
                        }
                        .padding(16)
                        .glassBackgroundEffect()
                        .onReceive(timer) { input in
                            currentDate = input
                        }
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Explore F1 Insight")
                            .font(.largeTitle.weight(.bold))
                        
                        Text("All your F1 data, reimagined for spatial computing.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    
                    
                    LazyVGrid(columns: columns, spacing: 24) {
                        ForEach(items) { item in
                            NavigationLink {
                                item.destination
                            } label: {
                                VStack(alignment: .leading, spacing: 12) {
                                    HStack {
                                        Image(systemName: item.images)
                                        Text(item.menuName)
                                            .font(.title3.weight(.semibold))
                                    }
                                    
                                    Text("Look, pinch, and dive into detailed insights.")
                                        .font(.footnote)
                                        .foregroundStyle(.secondary)
                                }
                                .frame(maxWidth: .infinity,
                                       minHeight: 180,
                                       alignment: .leading)
                                .padding(20)
                                .glassBackgroundEffect()
                                
                            }
                            .buttonStyle(.plain)
                        }
                    } .offset(y:50)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Text("© 2025 HAW – F1 Insight")
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

/* var body: some View {
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
 if let race = nextRace {
 Text("\(race.name)")
 .bold()
 
 Text(raceDateFormatter.string(from: race.date))
 .italic()
 } else {
 Text("Season Finished")
 }
 
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
 }*/

#Preview {
    HomeView()
}
