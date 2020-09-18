//
//  WebView.swift
//  HAckerNews
//
//  Created by Gunjan  Paul on 18/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:UIViewRepresentable {
    
    let uelString:String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView:  WKWebView , context:  Context) {
       
            if let safeString = uelString{
                if let url = URL(string: safeString){
                    let request = URLRequest(url: url)
                    uiView.load(request)
                }
            
        }
    }
    
   
}
