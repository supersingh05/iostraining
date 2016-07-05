//: Playground - noun: a place where people can play

import UIKit

// if statement

var snowInInches = 15

if snowInInches >= 13 {
    print("true")
} else {
    print("false")
}

// else if is done by writing else if condition


//switch statement
// looks at a value and compares to other values

var direction = "straight"
switch direction {
    case "left":
    print("left")
    case "right":
    print("right")
    
    default:
    print("defaut")
}

// can use range operator in case using ...

var arr = [2,3,4,5,4]
for a in arr {
    print("\(a)")
}


// iterating thru number 1 to 12
for num in 1 ... 12 {
    print("\(num)")
}

var number = Range(start:1, end:9)

// while loops
var i = 0
while i < 10 {
    print("\(i)")
    i+=1
}

var repeatCounter = 0
repeat {
    print("repeat in loop \(repeatCounter)")
    repeatCounter+=1
} while repeatCounter < 12

