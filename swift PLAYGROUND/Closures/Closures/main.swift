func calculator(n1:Int, n2:Int,operation: (Int,Int)->Int ) -> Int{
    return operation(n1,n2)
}

func add(n1: Int, n2:Int) -> Int {
    return n1+n2
}

func multiply(n1: Int, n2:Int) -> Int {
    return n1*n2
}

print(calculator(n1: 10, n2: 12,operation: add))

//clouser
print(calculator(n1: 10, n2: 20, operation: { (n1:Int,n2: Int) -> Int in
   return n1*n2
}))
print(calculator(n1: 10, n2: 12,operation: { (n1, n2)  in n1*n2}))
print(calculator(n1: 10, n2: 12,operation: {$0*$1}))
print(calculator(n1: 10, n2: 12) {$0*$1})
