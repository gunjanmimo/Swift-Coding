//
//  DetailView.swift
//  NewsPedia
//
//  Created by Gunjan  Paul on 19/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

struct WebView:UIViewRepresentable {
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safestring = urlString{
            if let url = URL(string: safestring){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
