// A struct is like a blueprint, a way to make objects in the same model
struct Town {
    // Properties of a Town
    let name: String
    var citizens: [String]
    var resourcers: [String: Int]

    // a Init is like a constructor, a custom  way to use this properties
    init(namee: String, citizes: [String], resources: [String: Int]) {
        // "this." refers to Town, the struct. For using same name and letting a new object less confusing
        this.name = name
        this.citizens = citizes
        this.resourcers = resources
    }
    
    // What a Town can do. A 'method'
    func fortify() {
        print("Defenses Increased")
    }
}

// Creating an object of "Town" type
var anotherTown = Town(name: "Scar rabbit", citizens:["Billy Krolik"], resources: ["Rabbits":500])
anotherTown.fortify()
anotherTown.citizens.append("spqr_amethyst")
print(anotherTown)
