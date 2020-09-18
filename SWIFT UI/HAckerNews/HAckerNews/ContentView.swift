//
//  ContentView.swift
//  HAckerNews
//
//  Created by Gunjan  Paul on 17/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    
    @ObservedObject var netWorkManager = NetworkManager()

    var body: some View {
        NavigationView{
            List(netWorkManager.posts){ post in
                HStack{
                    Text(post.id)
                    Text(post.title)
                }
                
            }
    .navigationBarTitle("Hacker News")
    }
        .onAppear {
            self.netWorkManager.fetchData()
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post:Identifiable {
    let id:String
    let title:String
    
    
}

