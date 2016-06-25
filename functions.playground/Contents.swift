//: Playground - noun: a place where people can play

import UIKit

// name is a input param, of type string. returns a type of string
func greeting(name: String, name2: String) -> String {
    let greet = "hello, " + name + name2 + "!"
    
    return greet
}

greeting("asa",name2: "b0b")

//if no return

func printLetters(word: String) {
    print(word)
}

// variadic paramter func, as many values in params as want

func average(someNums: Double...) -> Double {
    // someNums is an array of type double
    var total: Double = 0
    
    for num in someNums {
        total += num
    }
    
    return total/Double(someNums.count)
}

// function can only have one variadic param, and it has to be last

//default values
func multSomeNums(numOne: Int = 4, numTwo: Int = 6) -> Int {
    return numOne * numTwo
}

// array input
// ? adds optional binding
func smallestLargest(arrayOfInts: [Int]) -> (min: Int, max: Int)? {
    // if empty return nil
    if arrayOfInts.isEmpty { return nil}
    var min = arrayOfInts[0]
    var max = arrayOfInts[0]
    
    for value in arrayOfInts[1..<arrayOfInts.count] {
        if value < min {
            min = value
        } else if value > max {
            max = value
        }
    }
    return (min, max)
}




//inout parameter
//modifies input params
func swapTwoNumbers(inout num1: Int, inout _ num2: Int) {
    let tempNum1 = num1
    num1 = num2
    num2 = tempNum1
}
var x = 4
var y = 8
// need to use & before variable for inout
swapTwoNumbers(&x, &y)
x
y

// nested function
// in the func dec, func funcName(blah: Bool) -> (Int) -> Int
// (Int) is for the nested funciton





