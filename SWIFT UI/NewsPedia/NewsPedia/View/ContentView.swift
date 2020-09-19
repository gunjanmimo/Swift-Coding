//
//  ContentView.swift
//  NewsPedia
//
//  Created by Gunjan  Paul on 18/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject   var networkManager  = NetworkManager()
    
    
    var body: some View {
        NavigationView{
            
            List (networkManager.posts){ post in
                VStack{
                    Image("car").resizable().frame(width: 380, height: 200, alignment: .center).cornerRadius(25)
                    
                    Text(post.title).bold().font(.system(size: 22))
                    Spacer()
//                    HStack{
//                        // Text(post.id).bold()
//                        //Text(post.content)
//                    }
                }
                
            }
            .navigationBarTitle("News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id:String
    let title:String
    let content:String
    let url:String
}

