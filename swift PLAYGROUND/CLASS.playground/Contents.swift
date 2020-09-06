import UIKit

var str = "Hello, playground"

class BlogPost{
    var  title = ""
    var body = ""
    var author = ""
    var  noComment = 0
    
    func addComment() {
        noComment = noComment+1
        
    }
    
}

let myPost = BlogPost()
myPost.title  = "i am learning swift"
myPost.author = "gunjan paul"
myPost.body = "I am learning swift and i will make something crazy"
myPost.addComment()
print(myPost.noComment)
print(myPost.author)

// second post
let  mySecondPost = BlogPost()
mySecondPost.author = "Luis Paul"
mySecondPost.body = "story of a developer"
mySecondPost.body = "started from the bottom"
print(mySecondPost.author)
print(mySecondPost.noComment)


//inheritance
class Car{
    var topSpeed = 200
    func drive()  {
        print("driving at \(topSpeed)")
    }
    
}

class FutureCar: Car{
   override func drive()  {
    super.drive()
       print("boost power at \(topSpeed+400)")
   }
    func  fly(){
        print("this car can fly")
    }
    
}

let myRide = Car()
myRide.drive()

let nextCar = FutureCar()
nextCar.fly()

nextCar.drive()
