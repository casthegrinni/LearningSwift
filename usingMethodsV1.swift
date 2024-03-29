// A struct is like a blueprint, a way to make objects in the same model
struct Town {
    // Properties of a Town
    let name: String
    var citizens: [String]
    var resourcers: [String: Int]

    // a Init is like a constructor, a custom  way to use this properties
    init(townName: String, people: [String], stats: [String: Int]) {
        name = townName
        citizens = people
        resourcers = stats
    }
    
    // What a Town can do. A 'method'
    func fortify() {
        print("Defenses Increased")
    }
}

// Creating an object of "Town" type
var anotherTown = Town(townName: "Scar rabbit", people:["Billy Krolik"], stats: ["Rabbits":500])
anotherTown.fortify()
anotherTown.citizens.append("spqr_amethyst")
print(anotherTown)