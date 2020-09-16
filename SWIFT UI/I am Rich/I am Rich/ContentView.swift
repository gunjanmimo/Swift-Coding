//
//  ContentView.swift
//  I am Rich
//
//  Created by Gunjan  Paul on 17/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(.systemGray).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("I am RIch")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Image("diamond").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
