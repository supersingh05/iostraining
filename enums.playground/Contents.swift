//: Playground - noun: a place where people can play

import UIKit

//enums
// defines a common type for a group of related values

//enums can also have initializers
// raw value can be a string, character, int, float or double
//enum DogBreed {
//    case Pomeranian
//    case Husky
//    case Pug
//    case Collie
//}
// using raw value string
//enum DogBreed: String {
//    case Pomeranian
//    case Husky
//    case Pug
//    case Collie = "Large Breed"
//}
// can also have on the same line,ex case Pom, Husky, Pug

//associated values
enum DogBreed {
    case Pomeranian (Int, String)
    case Husky (Int, String)
    case Pug (Int, String)
    case Collie (Int, String)
}

var largeCanine = DogBreed.Husky
// if uses switch, need to define all values in enum
//switch largeCanine {
//case .Pomeranian:
//    print("pom")
//case .Husky:
//    print("husky")
//case .Pug:
//    print("pug")
//case .Collie:
//    print("collie")
//    
//}
var lifespanAndCategory = DogBreed.Pomeranian(17, "toy")
enum ATMError: ErrorType {
    case invalidSelection
    case updatedBankBalance (addFunds:Double)
    case wrongPinNumber
    case balanceCheck (alert: String)
    
}

var bankBalance = 400.00
func bullPay(money: Double) {
    if bankBalance < money {
        ATMError.balanceCheck(alert: "shit balance")
    } else if bankBalance > money {
        ATMError.balanceCheck(alert: "not bad")
    }
}


enum ControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
}

// if want the value from the raw vale, .rawValue
let tab = ControlCharacter.Tab.rawValue


//implicityly assigned raw value
enum MovieGenre: Int {
    case Action = 1, Comedy, Drama, Classics
}
MovieGenre.Action.rawValue
MovieGenre.Comedy.rawValue

let faveGenre = MovieGenre(rawValue:3)

if let someGenre = MovieGenre(rawValue:30) {
    switch someGenre {
    case .Classics:
        print("movie genre found classics")
    default:
        print("there is no value to find")
    }
} else {
    print("there is no genre at this position")
}



//revursive enumerations
// need indirect before to indicate recursive

indirect enum ArithExp {
    case Number(Int)
    case Addition(ArithExp, ArithExp)
    case Multiplication(ArithExp, ArithExp)
    
}

func evaluate(expression: ArithExp) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let five = ArithExp.Number(5)
let four = ArithExp.Number(4)
let sum = ArithExp.Addition(five, four)
let product = ArithExp.Multiplication(sum, ArithExp.Number(2))

print(evaluate(product))


