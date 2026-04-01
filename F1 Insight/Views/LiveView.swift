//
//  InisghtsView.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import SwiftUI
import AVKit

struct LiveView: View {
    var body: some View {
        if let url = URL(string: "") { // video URL will be added later for security/privacy reasons.
            WebView(url: url)
                .ignoresSafeArea()
        } else {
          Image("replaySoon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
        }
        
    }
}

