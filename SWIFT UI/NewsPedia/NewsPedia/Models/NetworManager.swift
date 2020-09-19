//
//  NetworManager.swift
//  NewsPedia
//
//  Created by Gunjan  Paul on 19/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

class NetworkManager:ObservableObject {
    @Published var posts = [Article]()
    
    func fetchData(){
        if let url = URL(string: "https://newsapi.org/v2/everything?q=covid&from=2020-09-18&to=2020-09-18&sortBy=popularity&apiKey=fe0771a2c1a6435f9cc27bd41bf2109f"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let result =   try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                 self.posts = result.articles
                            }
                           
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
