//: Playground - noun: a place where people can play

import UIKit
// string literal
var str = "Hello, playground"

//strings are value types

//unicode compliant
//string literals can have \0 \\ \T \N \R \" \'

str.characters.count

var ss = "this is some string cast to NSString" as NSString

//concatinating with + 

//str.append("!")


//strings have index of characters

var name = "asavir"

name.startIndex
name.endIndex

name[name.startIndex]
name[name.endIndex.predecessor()]

name[name.startIndex.successor()]
name[name.startIndex.advancedBy(1)]


for index in name.characters.indices {
    print("\(name[index])", terminator: " ")
}

var string1 = "asa"
var string2 = "asa"

if string1 == string2 {
    print("same")
}

var sss = "Movies - T3 - Action"
sss.hasPrefix("Movies")
sss.hasSuffix("bob")
// range of string
sss.rangeOfString("T3")


//inserting and removing within a string

var comp = "iMac"
comp.insert("!", atIndex: comp.endIndex)
comp.removeAtIndex(comp.endIndex.predecessor())

comp.capitalizedString
// stringByTrimmingCharactersInSet(NSCharactersSet.whitespaceCharacterSet())

var nameString = "bob, tom, fred"

nameString.componentsSeparatedByString(",")




