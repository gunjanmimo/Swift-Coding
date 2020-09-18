//
//  NetworkManager.swift
//  HAckerNews
//
//  Created by Gunjan  Paul on 18/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation


class NetworkManager:ObservableObject {
    @Published   var posts:[Hits] = []
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session =  URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let result = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                            self.posts = result.hits
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
