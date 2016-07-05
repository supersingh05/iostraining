//: Playground - noun: a place where people can play

import UIKit
// generics

// help avoid repetive code
//helps make functions to work with any data types

//func swapeTwoValues(inout val1: Int, inout _ val2: Int) {
//    let tempValue = val1
//    val1 = val2
//    val2 = tempValue
//}
//
//var val1 = 3
//var val2 = 10
//
//// if _ put before val2 in func definition, dont need to do as below anymore
////swapeTwoValues(&val1, val2: &val2)
//swapeTwoValues(&val1, &val2)
//
//
//val1
//val2

// now to make generic

func swapeTwoValues<T>(inout val1: T, inout _ val2: T) {
    let tempValue = val1
    val1 = val2
    val2 = tempValue
}

var val1 = "bob"
var val2 = "fred"

// if _ put before val2 in func definition, dont need to do as below anymore
//swapeTwoValues(&val1, val2: &val2)
swapeTwoValues(&val1, &val2)


val1
val2

// custom generic types

//struct StringStack {
//    var objects = [String]()
//    
//    //mutating because modifying objects array
//    mutating func push(object: String) {
//        objects.append(object)
//    }
//    
//    mutating func pop() -> String {
//        return objects.removeLast()
//    }
//}

// generic version
// Element is just a place holder for a future type
struct ObjStack<Bob> {
    var objects = [Bob]()
    
    //mutating because modifying objects array
    mutating func push(object: Bob) {
        objects.append(object)
    }
    
    mutating func pop() -> Bob {
        return objects.removeLast()
    }
}

extension ObjStack {
    var topOfStack: Bob? {
        return objects.isEmpty ? nil : objects[objects.count -1]
    }
}
var stringStack = ObjStack<String>()

stringStack.push("panchod")
stringStack.push("fudi")
stringStack.pop()

