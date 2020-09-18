//
//  DetailView.swift
//  HAckerNews
//
//  Created by Gunjan  Paul on 18/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url:String?
    var body: some View {
        WebView(uelString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https:commandline.ml")
    }
}


