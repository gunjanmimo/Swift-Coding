//
//  Model.swift
//  Covid Tracker
//
//  Created by Gunjan  Paul on 09/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation
protocol CovidDataManagerDelegate {
    func didUpdateData(_ data: CovidData)
    func didFailedWithError(_ error: Error)
}
struct CovidDataManager {
    let covidURL = "https://coronavirus-19-api.herokuapp.com/countries/"
    
    var delegate : CovidDataManagerDelegate?
    
    func fetchData(_ countryName:String){
        let urlString = covidURL+countryName
        performRequest(with: urlString)
    }
    
    //  performing request and session
    func performRequest(with urlString:String) {
        //        1. create url
        if let url = URL(string: urlString){
            //      2. creat url session
            let session = URLSession(configuration: .default)
            //      3. crete url task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    self.delegate?.didFailedWithError(error!)
                    return
                }
                if let safeData = data{
                    if let cData =  self.perseJSON(safeData){
                        self.delegate?.didUpdateData(cData)
                        
                    }
                }
            }
            task.resume()
        }
    }
    
    
    
    func perseJSON(_ covidData: Data) -> CovidData?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(CovidData.self, from: covidData)
         return decodedData
        } catch{
            delegate?.didFailedWithError(error)
           return nil
        }
        
    }
}

