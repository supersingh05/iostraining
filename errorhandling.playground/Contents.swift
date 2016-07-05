//: Playground - noun: a place where people can play

import UIKit

// error handling

//do try catch

func newErrorHandling() {
    if let path = NSBundle.mainBundle().pathForResource("song", ofType: "mp4") {
        do {
            let mySong = try NSString(contentsOfFile: path , encoding: NSUTF8StringEncoding)
            let mySong2 = try NSString(contentsOfFile: path , encoding: NSUTF8StringEncoding)
        } catch {
            // catc hand handle errors
        }
    }
}
// if super sure it will work, get rid of catch and do try!

//throwing errors

enum ATMError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(required: Double)
    case WrongPinNumber
    case BalanceUnder500
}

func canThrowAnError() throws {
    print("Hello")
}

func checkMyBalance(balance: Double) throws -> Double {
    if balance < 500 {
        throw ATMError.BalanceUnder500
    }
    return balance
}

func printAnyErrors() {
    do {
        _ = try checkMyBalance(499)
        
    } catch ATMError.BalanceUnder500{
        print("balance is below 500")
    } catch ATMError.WrongPinNumber {
        print("wrong pin")
    }
}

printAnyErrors()



//guard statement

// similar to if, but it ALWAYS has an else
//you can unwrap an object with a guard, and its available outside of the scope

var animals: String = "fido"

func countChars() {
    let willThisPrint = "yes"
    guard animals.characters.count > 3 else {return}
    print ("\(willThisPrint)")
    
}

