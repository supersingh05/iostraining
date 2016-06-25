//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// variable is an object that stores or refers to values
//values in constants cannot change

// example of constant
let maximumNumberOfWithdrawals = 5

//example of variable 
var withdrawalAttempts = 3

//creating multiple constants/vars in one line
var a = 2, b = 0, c = 1

let d = 2.2, e = 1.1, f = 3.3

//type annotation , define its type
// declaring variable of type string
var hellowSwift2: String

//can define related variable of same time in same line
var north, south, east, west: String

//swift has type inference
var someString = "this is type inference, so makes this a string"

// can have variables of emojis names, any unicode chars, but no whitespace or nums in start

let 💩 = "emoji constant lulz"

var hola = "Hello"
hola = "hi"


//print function, prints to console

print(hola)


//embed variable into string
var name = "bob"
print("his name is \(name)")

//Integer data type
var temp: Int = 85

//Float, fractional component number, 6th digit precision
var pi: Float = 3.14

//Double, like a float, but twice the precision
var long: Double = 5.12344

// casting
let three = 3
let fraction = 0.14159
//explicit conversion
let p = Double(three) + fraction

let integerPi = Int(pi)

// Boolean
let sunnyDay = false
let isRaining = true

if sunnyDay {
    print("Beach Day")
} else {
    print ("nascat")
}




