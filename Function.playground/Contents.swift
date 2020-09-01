import UIKit

var str = "Hello, playground"

//function
func myfunc(){
    print("i am gunjan paul")
}
myfunc()

func addTwoNumber(){
    let  A = 34
    let  B  =  34
   print(A+B)
}

addTwoNumber()

// returning value
func sub() -> Int{
    let a = 2
    let  b = 4
    return a-b
    
}

print("sub value: ",sub())

//parameter
func sumup(a:Int, b:Int)-> Int{
    return a+b
}
print("sum of 3 and 4: ",sumup(a: 4, b: 3))
