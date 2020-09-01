import UIKit

var str = "Hello, playground"

let c = 1

print("only c if less than 11")

if c>11{
    print("yes, c is less than 11")
}
else if c==1{
    print("it is 1")
}
else{
    print("not greater than 11 and not equals to 1")
}

let a = 4

print("only c if less than 11")

if c>11 || a<2 {
    print("c is not greater than 11 and a not less than 4")
}
else if c==1 && a==4{
    print("c is 1 and a is 4")
}
else if c==1 && a != 4{
        print("c is 1 and a is not  4")
}
else{
    print("nothing")
}
