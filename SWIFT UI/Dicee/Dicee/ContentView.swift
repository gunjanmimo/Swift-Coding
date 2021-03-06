//
//  ContentView.swift
//  Dicee
//
//  Created by Gunjan  Paul on 17/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var diceOne = 1
@State    var diceTwo = 2
    
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
       
            VStack{
                Image("diceeLogo")
                     Spacer()
                HStack{
                    DiceView(n: diceOne)
                    DiceView(n: diceTwo)
               
                    
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceOne = Int.random(in: 1..<6)
                    self.diceTwo =  Int.random(in: 1..<6)
                }) { Text("Roll").font(.system(size: 40)).foregroundColor(.white)
                    .padding(.horizontal)
                }
                .background(Color.red)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    }
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1,contentMode: .fit)
            .padding(.all)
    }
}
