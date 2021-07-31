func loveCalculator (){
    let lovemeter = Int.random(in: 0...100)
    var msg = ""

    switch lovemeter {
    case ..<40:
        msg = "You'll be forever alone"
    case 40..<80:
        msg = "You are like Coke and Mentos"
    case 80..<100:
        msg = "You love each other like Keanye loves Keanye"
    case 100:
        msg = "You're like Orfeu and Euridice"    
    default:
        fatalError("Unsupported")
    }
    print("Lovemeter rank: \(lovemeter)")
    print(msg)   
}

loveCalculator()