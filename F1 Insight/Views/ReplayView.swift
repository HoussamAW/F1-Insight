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
        if let url = URL(string: "URL_HERE") {
            WebView(url: url)
                .ignoresSafeArea()
        }
    }
}

