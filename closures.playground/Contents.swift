//: Playground - noun: a place where people can play

import UIKit

//closure, self contained block of functionality that you can pass around in your code

// can use as an arg in a function or a variable

//closures can capture and store references to constants and variables

// a function is a closure that has a name, but cannot capture values
/*
func sumFunc() {
 }
 */

//nested function, is a closure that has a name and an capture values
/*
func addFunc(num: Int) -> () -> Int
 {
    var total = 0
 func increaseByOne() -> Int {
    total += num
    return total
 }
 
 return increaseByOne
 }
*/

//closure expression, closure with no name and can capture values

// {(str1: String, str2: String) -> Bool in return str1 > str2}

var lastnames = ["ranal", "cruz", "harris", "beckham", "manning"]

lastnames.sort()

func reverseSort(str1: String, _ str2: String) -> Bool {
    return str1 > str2
}

lastnames.sort(reverseSort)

//closure format

// {(parameters) -> return type in statements}

var x = lastnames.sort({(str1: String, str2: String) -> Bool in return str1 > str2})
x


//trailing closures
// a closure expression written outside the function call it supports

lastnames.sort() {(str1: String, str2: String) -> Bool in return str1 > str2}

let digitalDictionary = [0: "Zero", 1: "one", 2:"two"]
let numbersArray = [25, 2, 4, 1]

let strings = numbersArray.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        digitalDictionary[number % 10]! + output
        number /= 10
    }
    return output
}





