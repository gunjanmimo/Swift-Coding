import UIKit


class Person{
    var name = ""
    
}

class BlogPost {
    var title:String? //could be optional
    var  body  = "hey,"
    var author:Person?
    var  numbrerOfComment = 0
}

let post = BlogPost()
print(post.body+" hello")

//optional binding
post.title = "yo"
//if let actualTitle = post.title{
//    print(actualTitle+" this swift")
//}
if post.title != nil {
    print(post.title! + " this swift") // ! for force unwrapping
}
if post.title == nil {
//    optional contains no value
    print("yo! this swift")
}


//print(post.title! + " this swift")

