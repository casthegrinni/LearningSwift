class Enemy {
    var health: Int = 100
    var attackPower: Int = 10

    func move() {
        print("Move forwards")
    }
    func attack() {
        print("Hits and does \(attackPower) damage!")
    }
}

var skeleton = Enemy()
print(skeleton.health)
print(skeleton.attackPower)
skeleton.move()
skeleton.attack()


class Dragon: Enemy {
    var wingSpread: Int = 2

    func speaks(speech: String){
        print("Says: \(speech)")
    }
    override func move() {
        print("Fly forwards.")
    }
}

var dragon = Dragon()
dragon.health = 200
dragon.attackPower = 15
dragon.speaks(speech: "\n My armour is like tenfold shields, \n my teeth are swords, my claws spears, \n the shock of my tail a thunderbolt, \n my wings a hurricane, and my breath death!")
dragon.attack()
dragon.move()