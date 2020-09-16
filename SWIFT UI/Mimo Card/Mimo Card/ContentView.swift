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
            
            Color(red: 0.18, green: 0.84, blue: 0.45).edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image("apex").resizable().frame(width: 150, height: 150, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Gunjan Paul").font(Font.custom("LongCang-Regular", size: 40)).bold()
                    .foregroundColor(.white)
                Text("iOS Developer").bold().foregroundColor(.white).font(.system(size: 25))
                Divider()
                
                
                RoundedRectangle(cornerRadius: 25).frame(height: 40, alignment: .center).foregroundColor(.white).overlay(
                    HStack {
                        Image(systemName: "icloud.fill").foregroundColor(.green)
                        Text("gunjan.mtbpaul@gmail.com")
                    }
                )
                
                RoundedRectangle(cornerRadius: 25).frame(height: 40, alignment: .center).foregroundColor(.white).overlay(
                    HStack {
                        Image(systemName: "phone.fill").foregroundColor(.green)
                        Text("123456789")
                    }
                    .padding(.all)
                )
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}
