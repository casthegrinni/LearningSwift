import Foundation

// Two ways to format a Number to user interface
let x = 1.23556789
let y = Double(round(100*x)/100)
print(y)

// or
print(String(format: "%.2f", x))