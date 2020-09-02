import UIKit

var carDb = Dictionary<String,String>()
var carDb2 = [String:String]()

carDb2["hge 343"] = "bmw"

//retrive data
carDb2["hge 343"]
//update data
carDb2["hge 343"] = "ducti"
//remove value
carDb2["hge 343"] = nil

print(carDb2["434 ss"]) // returning null value

//iterate
carDb["DR 34"] = "BMW"
carDb["DFDS 342"] = "FERRARI"
carDb["DSDR 334"] = "MAJDA"

for (licence, car) in carDb{
    print(licence+"----"+car)
}
