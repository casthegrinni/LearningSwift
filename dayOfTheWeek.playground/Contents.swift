import UIKit

//var aNumber = Int(readLine()!)!

func dayOfTheWeek(day: Int) {
    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Thusday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("Invalid day. Range 1 - 7")
    }
}

dayOfTheWeek(day: 2)