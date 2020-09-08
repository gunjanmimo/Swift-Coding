import UIKit



extension Double{
    func round(to place: Int) -> Double{
        let precisionNumber = pow(10, Double(place))
        var  n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
    
}
var myDouble = 3.23343
let myRoundDouble = String(format: "%.2f", myDouble)


myDouble.round(to: 2)
