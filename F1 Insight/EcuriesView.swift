//
//  EcuriesView.swift
//  F1 Insight
//
//  Created by Houssam on 14/07/2025.
//

import SwiftUI
struct EcuriesView:View {
    let ecurieLogo = [
        EcuriesModel(name: "", logo: "RedBullRacing", carModel: "RedbullCar"),
        EcuriesModel(name: "", logo: "Ferrari", carModel: "FerrariCar"),
        EcuriesModel(name: "", logo: "KickSauber", carModel: "KickSauberCar"),
        EcuriesModel(name: "", logo: "Mclaren", carModel: "MclarenCar"),
        EcuriesModel(name: "", logo: "Williams", carModel: "WilliamCar"),
        EcuriesModel(name: "", logo: "Mercedes", carModel: "MercedesCar"),
        EcuriesModel(name: "", logo: "AstonMartin", carModel: "AstonMartinCar"),
        EcuriesModel(name: "", logo: "Haas", carModel: "HaasCar"),
        EcuriesModel(name: "", logo: "Alpine", carModel: "AlpineCar"),
        EcuriesModel(name: "", logo: "RacingBulls", carModel: "RacingBullCar")]
    @State private var img = "RedbullCar"
    
    var body: some View {
        VStack {
            //En tete de l'app (Logo)
            HStack{
                Image("F1.svg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("Insight")
                    .font(.caption)
                    .italic()
                    .foregroundStyle(.white)
                    .offset(x: -10, y: 3)
             
            }
            
                Spacer()
            
            
             
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                   
            
          
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
