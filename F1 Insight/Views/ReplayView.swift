//
//  ReplayView.swift
//  F1 Insight
//
//  Created by Houssam on 23/11/2025.
//

import SwiftUI
import AVKit

struct ReplayView: View {
    var body: some View {
        if url != nil  { 
            WebView(url: url!)
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
