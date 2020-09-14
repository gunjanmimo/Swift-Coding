//
//  Model.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

protocol NewsDataMangerDelegate {
    func didUpdateData(_ data: NewsData)
    func didFailedWithError(_ error: Error)
}

struct NewsDataManager {
    let newsURL = "http://newsapi.org/v2/top-headlines?apiKey=fe0771a2c1a6435f9cc27bd41bf2109f&country=us&category=business"
    var delegate: NewsDataMangerDelegate?
    
    func fetch(_ queryString:String) {
        let urlString = newsURL+queryString
        performRequest(urlString)
    }
    
    func performRequest(_ urlString:String) {
        //        1. create url
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!.localizedDescription)
                }
                if let safeData = data{
                    if let newsData = self.perseJSON(safeData){
                        self.delegate?.didUpdateData(newsData)
                    }
                }
            }
            task.resume()
        }
    }
    
    func perseJSON(_ data:Data)-> NewsData?{
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(NewsData.self, from: data)
            // print(decodedData.articles[0].content)
            return decodedData
        }
        catch{
            delegate?.didFailedWithError(error)
            return nil
        }
    }
}
