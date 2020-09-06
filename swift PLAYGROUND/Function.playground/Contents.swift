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
func sumup(arg a:Int, arg2 b:Int)-> Int{
    return a+b
}
print("sum of 3 and 4: ",sumup(arg: 4, arg2: 3))

//without arg
func sumup2(a:Int, b:Int)-> Int{
    return a+b
}
print("sum of 3 and 4: ",sumup2(a: 4, b: 3))

func sumup3(_ a:Int,_ b:Int)-> Int{
    return a+b
}
print("sum of 3 and 4: ",sumup3(4,  3))
