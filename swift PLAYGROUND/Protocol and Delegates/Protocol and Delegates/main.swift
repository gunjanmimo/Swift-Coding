
protocol AdvanceLifeSupport {
    func performCPR()
}



class EmergencyCallHandeler {
    var delegate: AdvanceLifeSupport?
    
    
    func assessSituation() {
        print("can you tell me what happened?")
    }
    func medicalEmergency() {
        delegate?.performCPR()
    }
}



struct Paramedic: AdvanceLifeSupport {
    init(handler:EmergencyCallHandeler) {
        handler.delegate = self
    }
    func performCPR() {
        print("paramedic does chest compressions, 30 per second")
    }
}



class Doctor: AdvanceLifeSupport {
    init(handler: EmergencyCallHandeler) {
        handler.delegate = self
    }
    func performCPR() {
        print("the doctor does the chest compression, 30 per second")
    }
    
    func useStatesocpe() {
        print("listing for heart sounds")
    }
}


class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("singing staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("whirrrr...")
    }
    
    
    
}


let emilio  = EmergencyCallHandeler()
let pete = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

