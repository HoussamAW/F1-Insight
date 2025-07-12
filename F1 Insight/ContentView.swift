//
//  ContentView.swift
//  F1 Insight
//
//  Created by Houssam on 12/07/2025.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
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
            HStack(spacing:30) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
//                    Image("Ecurie")
//                        .resizable()
////                        .aspectRatio(contentMode: .fit)
//                        .frame(width:300,height: 150)
//                        .cornerRadius(20)
//                        .shadow(radius: 5)
                        
//                    Text("Ecurie")
//                        .bold()
//                        .italic()
//                        .font(.largeTitle)
                        
                       
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
                }
            
            }.padding()
            HStack(spacing:30) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.ultraThinMaterial)
                        .frame(width:350,height: 200)
                        .shadow(radius: 50)
                }
            
            }.padding()
            
          Spacer()
            Text("Copyright © 2025 HAW. Tous droits réservés.")
                .font(.caption)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
