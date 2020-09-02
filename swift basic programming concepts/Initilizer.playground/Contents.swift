import UIKit

var str = "Hello, playground"

class Person{
    var name = ""
    var age = 0
    init() {
        
    }
    init(_ name:String,_  age: Int) {
//        set up your code
        self.name = name
        self.age = age
    }
    
}

var a  = Person("Gunjan", 20)
var  b = Person()
print(b.name)
print(a.name)
