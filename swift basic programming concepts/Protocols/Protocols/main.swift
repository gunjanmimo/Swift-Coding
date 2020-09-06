protocol canFly {
    func fly()
}



class Bird {
    var isFemale = true
    
    func layEgg()  {
        if isFemale{
            print("the bird makes a new bird in a shell")
        }
    }
   
}


class Eagle: Bird, canFly {
    func fly() {
        print("the eagle flaps its wings and lifts off into the sky")
    }
    
    func soar()  {
        print("the eagle glides in the air using air current")
    }
}



class Penguin: Bird {
    func swim()  {
        print("the penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: canFly) {
        flyingObject.fly()
    }
}


struct Airplane: canFly {
    func fly() {
        print("Plane can fly to anywhere")
    }
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.soar()
//myEagle.layEgg()
let myPenguin = Penguin()
let  museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myEagle)
