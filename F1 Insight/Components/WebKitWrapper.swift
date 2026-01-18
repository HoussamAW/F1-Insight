//
//  WebKitWrapper.swift
//  F1 Insight
//
//  Created by Houssam on 23/11/2025.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

/* {
     private let videoURLString = " "

     @State private var player: AVPlayer? = nil

     var body: some View {
         Group {
             if let player = player {
                 VideoPlayer(player: player)
                     .aspectRatio(16.0 / 9.0, contentMode: .fit)
                     .frame(width: 1200, height: 675)
             } else {
                 Text("No Video.")
             }
         }
         .onAppear {
             if let url = URL(string: videoURLString) {
                 let newPlayer = AVPlayer(url: url)
                 self.player = newPlayer
                 newPlayer.play()
             }
         }
     }
 } */
