import UIKit

var str = "Hello, playground"

var somecharacter: Character = "A"
if somecharacter == "A"{
    print("this is a A")
}

print("this is from switch")
switch somecharacter {
case "A":
    print("this is a A")
case "b":
    print("this is a B")
case "b","c":
    print("this is a B or C")
default:
 print("this is nothing")
}
