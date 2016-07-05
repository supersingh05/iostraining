//: Playground - noun: a place where people can play

import UIKit

// arrays
// array is an ordered collection of values
// must hold same data type

// initialized to empty arr
var arrayOfInts = [Int]()

// also declar arr like this
var arrOfNames = ["bob", "fred"]

// or

var arrOfStuff: Array<String> = ["a", "b"]

// getting count
arrOfStuff.count

//adding element at end
arrOfStuff.append("aa")

arrOfStuff

var fourDoublesArr = [Double](count: 4, repeatedValue: 3.14)

var fiveDoubles = [Double](count: 5, repeatedValue: 3.1433)

var nineDoubles = fourDoublesArr + fiveDoubles

nineDoubles

//check if empty
nineDoubles.isEmpty

nineDoubles.insert(3.98, atIndex: 9)

nineDoubles

//removing at index

nineDoubles.removeAtIndex(0)

// return last element
nineDoubles.removeLast()

if let match = nineDoubles.indexOf(3.14) {
    print("blah")
}

//sorting
nineDoubles.sort()
// sort can take closure

