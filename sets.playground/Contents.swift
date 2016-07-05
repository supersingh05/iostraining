//: Playground - noun: a place where people can play

import UIKit

//sets
//unordered collection

var someSet = Set<String>()

var anotherSet: Set<String> = ["val1", "val2"]

var typeInferSet: Set = ["val1", "val2"]
// need Set keyword so it knows its a set, and not an array

//differences btwn arry, set

var appleProducts: Set = ["imac", "iphone"]

var countries = ["usa", "uk", "uk"]

//sets need unique values
// set neeeds to have an object which can be hashed

appleProducts.count
appleProducts.contains("imac")
appleProducts.isEmpty
appleProducts.insert("ipad")
appleProducts.remove("ipad")

appleProducts.sort()
appleProducts.sort(<)
appleProducts.sort(>)

var dBy2: Set = [2,4,6,8,10]
var dBy3: Set = [3,6,9,12,15]
var dBy4: Set = [4,8,12,16,20]

// set operations
//dBy2.union(dBy3).sort()

//dBy2.intersect(dBy3)

//dBy2.subtract(dBy4).sort()
// and can do exclusiveOr

//isSubsetof
//issupersetof

// isdisjointwith