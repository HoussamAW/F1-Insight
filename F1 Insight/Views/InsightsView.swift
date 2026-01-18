//
//  InisghtsView.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import SwiftUI

struct InsightsView: View {
    var body: some View {
        VStack {
            Image("Model")
                .resizable()
                .frame(width:400,height: 200)
                .rotationEffect(.degrees(90))
        }
        
    }
}
#Preview(windowStyle: .automatic) {
    InsightsView()
}

