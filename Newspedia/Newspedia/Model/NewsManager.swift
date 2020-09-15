//
//  Model.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

struct NewsManager {
    let newsURL = "https://newsapi.org/v2/top-headlines?apiKey=fe0771a2c1a6435f9cc27bd41bf2109f"
    func fetchNews(_ queryString:String){
        let urlString = newsURL+queryString
        performRequest(urlString)
    }
    
    //networking steps
    //    1. create URL
    //    2. create URLSession
    //    3. creating a task
    //    4. start the task
    
    func performRequest(_ urlString:String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData  = data { self.perseJSON(safeData)
                }
            }
            task.resume()
        }
    }
    func perseJSON(_ newsData:Data){
        let decoder = JSONDecoder()
        do {
           let decodedData = try decoder.decode(NewsData.self, from: newsData)
            print(decodedData.articles[0].articleDescription!)
            //print(decodedData.articles[0].author!)
            
            

        }catch{
            print(error)
        }
    }
}


