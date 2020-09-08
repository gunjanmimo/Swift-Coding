
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
