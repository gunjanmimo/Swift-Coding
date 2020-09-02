import UIKit

var a = "bird"
var b = "cat"
var  c = "frog"

a = "my" + a

var d = ["dog","cat","frog"]
a =  "my" + d[0]
b =  "my" + d[1]
c =  "my" + d[2]

//for counter in 0...2{
//    print("my "+d[counter])
//}

for item in d{
    print("my "+item)
}

var  f  = [String]()

// appending element
f  += ["parrot","owl"]
f.append("cat")

//remove element
f.remove(at: 0)

//change value
f[0] = "turtle"
print(f[0])
// count
print(f.count)
