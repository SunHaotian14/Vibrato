//
//  PersonalWebsite.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/15.
//

import SwiftUI
import WebKit

struct PersonalWebsiteView: View {
    var body: some View {
        WebView(url: URL(string: "https://sunhaotian.works")!)
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct PersonalWebsite_Previews: PreviewProvider {
    static var previews: some View {
        PersonalWebsiteView()
    }
}
