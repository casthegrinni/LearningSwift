import UIKit

let myArray: [Int] = [50, 203, 1023, 232]

print("This is my initial array: \(myArray)")
let firstNumber = myArray[0] * myArray[1]
let secondNumber = myArray[1] * myArray[2]
let thirdumber = myArray[2] * myArray[3]

let myNewArray: [Int] = [firstNumber, secondNumber, thirdumber]

print("And this, the multiplied array: \(myNewArray)")
