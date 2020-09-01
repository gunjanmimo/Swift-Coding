import UIKit

class Person{
    var name = ""
    
}

class BlogPost {
    var  fullTitle:String  {
        if title != nil && author != nil {
            return title! + " by " + author!.name
        }
        else if title != nil{
        return title!
        }
        else {
            return "no title"
        }
        
    }
    
    var title:String? //could be optional
    var  body  = "hey,"
    var author:Person?
    var  numbrerOfComment = 0
    
    func addComment()  {
        
    }
    func  sharePost() {
        
    }
}

let author = Person()
author.name = "gunjan"

let myPost = BlogPost()
myPost.author  = author
myPost.title = "learn swifr for scratch"

print(myPost.fullTitle)
