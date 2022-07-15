//
//  WebView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
