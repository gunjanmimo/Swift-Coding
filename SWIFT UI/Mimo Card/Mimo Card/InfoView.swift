//
//  InfoView.swift
//  Mimo Card
//
//  Created by Gunjan  Paul on 17/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let icon:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).frame( height: 40, alignment: .center).foregroundColor(.white)
            .overlay(
                
                HStack{
                    Image(systemName: icon).foregroundColor(.green)
                    Text(text).bold()
            })
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            VStack{
                InfoView(text: "gunjan.mtbpaul@gmail.com", icon: "envelope")
                InfoView(text: "123456789", icon: "phone")
            }
            
        }
    }
}
