import Foundation

// functions can have internal and external parametrers. In this case, the 
// external parametrer is "_", so we don't need to write anything, only the 
// Argument when we call the function
// -> dataType ---- Value that the function will return

func greetings(_ name: String) -> Bool{    
    print("Hello, \(name)")
    
    if name == "Freya" || name == "Amethyst" {
        return true

    } else {
        return false
    }
}

let testing = greetings("Freya")
print(testing)