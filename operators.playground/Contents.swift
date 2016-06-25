//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//addition
var a = 1 + 2

//negative prefix operator
-a

//unary postfix
a++

print(a)


//ternary conditional statment
var ternary = true
var string1 = "string 1"
var string2 = "string 2"
// if ternary true, use string 1, if not use string 2
ternary ? string1 : string2

//string concatincation
"hello" + "world"


//division
9/4

//modulo
9 % 4

var i = 0
++i
print(i)
--i
print(i)

let gpsDirections = "north"
//its optional cuz value in question is optional, may or maynot have a value
var paperMapDirections: String?

// checks if papermapdirections has a value, if not use gps directions
var navigate = paperMapDirections ?? gpsDirections

//range operator
// this includes 0 to 4
for index in 0...4 {
    print("\(index) times 3 is \(index * 3)")
}

//half open range operator
// only includes 0 to 3
for index in 0..<4 {
    print("\(index) times 3 is \(index * 3)")
}
// not !
//and &&
//or ||





