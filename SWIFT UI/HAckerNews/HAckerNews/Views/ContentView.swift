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
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }   
            }
             .navigationBarTitle(Text("News"), displayMode: .inline)
            .edgesIgnoringSafeArea(.all)
            
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

