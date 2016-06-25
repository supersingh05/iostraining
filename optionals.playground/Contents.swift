//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// optionals, when you may or may not have a value, using this ?
// stops you from refrencing a nil object

var optionalString: String?

//optionals can not be used on a constant

optionalString = "unwrap me before you use me"

// forcing unwrap, when you 100% know theres a value
let nowUnwrapped = optionalString!

//optional binding, checks if a value is there before we use it

if let unwrappedString = optionalString {
    print("there is a value in here \(unwrappedString)")
} else {
    print("nooop")
}

//implicity unwrapped
// variable will def get a value at runtime at some point
var implicitlyUnwrapped: Double!


