import UIKit

func exercise() {

    // Define the User struct here
    struct User {
        let name: String
        let email: String
        var followers: Int
        var isActive: Bool
        
        init(name: String, email: String, followers: Int, isActive: Bool) {
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus (){
            print(isActive)
            if isActive {
                print("\(name) is Active!")
            } else {
                print("\(name) is not active!")
            }
        }
        
    }


    // Initialise a User struct here




    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}

exercise()
