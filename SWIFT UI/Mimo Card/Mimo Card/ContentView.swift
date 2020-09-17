//
//  ContentView.swift
//  Mimo Card
//
//  Created by Gunjan  Paul on 17/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.20, green: 0.85, blue: 0.70).edgesIgnoringSafeArea(.all)
            VStack{
                Image("cyberpunk").resizable().frame(width: 150, height: 150, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Gunjan Paul").font(Font.custom("PermanentMarker-Regular", size: 40)).foregroundColor(.white)
                Text("iOS Developer").foregroundColor(.white)
                Divider()
                InfoView(text: "gunjan.mtbpaul@gmail.com", icon: "envelope")
                InfoView(text: "123456789", icon: "phone")
              InfoView(text: "Jaipur, Rajasthan", icon: "map")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

