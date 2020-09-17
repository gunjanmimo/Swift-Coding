import Foundation

struct  NewsManager {
    let newsURL = "https://newsapi.org/v2/top-headlines?apiKey=fe0771a2c1a6435f9cc27bd41bf2109f"
    func fetchNews(_ queryString:String)->NewsData{
        let urlString = newsURL+queryString
        return performRequest(urlString)
        
    }
    // perform news api request
    func performRequest(_ urlString:String) -> NewsData {
        var n:NewsData!
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    n  = self.perseJSON(safeData)
                }
            }
            task.resume()
        }
        return n
    }
    
    func perseJSON(_ newsData:Data) -> NewsData{
        var x:NewsData!
        let dercoder = JSONDecoder()
        do {
            let decodedData = try dercoder.decode(NewsData.self, from: newsData)
            x = decodedData
        }catch{
            print(error)
        }
        return x
    }
    
}
