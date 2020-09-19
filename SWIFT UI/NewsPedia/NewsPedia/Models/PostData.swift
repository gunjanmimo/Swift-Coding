import Foundation

struct Result:Codable{
    let articles: [Post]
}
struct Post:Codable,Identifiable {
    var id:String{
        return title
    }
    let author:String?
    let title:String
    let description:String?
    let url:String?
    let urlToImage:String?
    
}
