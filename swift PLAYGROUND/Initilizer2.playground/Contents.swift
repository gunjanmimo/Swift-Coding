import UIKit

class Person{
    var name = ""
    
}

class BlogPost {
    var title:String
    var  body  = "hey,"
    var author:Person
    var  numbrerOfComment = 0
    
    
    init() {
        title = "this is a title"
        author = Person()
    }
    
//    convenience init
    convenience init(customTitle:String){
        self.init()
        title = customTitle
    }
    
    
}


let post  = BlogPost(customTitle: "this is custom title")

