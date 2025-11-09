//
//  EcuriesView.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct EcuriesView:View {
    @State private var img = "RedbullCar"
    @State private var logos = "RedBullRacing"
    @State private var ecurieName = "RedBull Racing"
    @State private var pilotImg1 = ""
    @State private var pilotImg2 = ""
    @Environment(\.openWindow) private var openWindow
    var body: some View {
        VStack {
                Spacer()
            HStack {
                VStack(spacing: 20) {
                    Image(logos)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    
                    Text(ecurieName)
                        .font(.title3)
                        .italic()
                }.offset(x:200)
                Button {
                    openWindow(id: "car-detail")
                } label: {
                    Image(img)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                }.buttonStyle(.plain)
                
                
                
                HStack {
                  
                        Image(pilotImg1)
                            .resizable()
                               .aspectRatio(contentMode: .fit)
                        Image(pilotImg2)
                            .resizable()
                               .aspectRatio(contentMode: .fit)
                           
                    } .frame(width: 50,height: 50)
            }

                Text("Ecuries")
                    .italic()
                    .font(.title)
                    .bold()
                    .padding(.leading, 20)
                    .padding(.bottom, 30)
               
            HStack(spacing:20) {
                ForEach(ecurieLogo) { logo in
                    Button {
                        img = logo.carModel
                        logos = logo.logo
                        ecurieName = logo.name
                        pilotImg1 = logo.pilot1
                        pilotImg2 = logo.pilot2
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 90, height: 90)
                                .foregroundStyle(.ultraThinMaterial)
                            Image(logo.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                        }
                    }.buttonStyle(.plain)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    EcuriesView()
}
