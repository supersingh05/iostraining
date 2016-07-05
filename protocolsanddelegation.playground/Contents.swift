//: Playground - noun: a place where people can play

import UIKit

//swift protocols are a set of rules your class, enum , or struct can conform to
// allow you to define properties and functions that MUST be used in a data structure
// but can mark a method or property as optional

//similar to interfaces in java
// to make optional prefix protocol with @objc
@objc protocol Palindrome {
    //define protocol
    
    optional func palindromeCheck(word: String) -> Bool
    
    //instance properties
    var numberOfWords: Int {get} //readOnly
    var numberOfCharacters: Int {get set} //readWrite
    
    //type property
    static var longestPalindrome: String {get}
    
}
//instance property is are properties that belong to a instance of a particular type
// values are seperate from any other instance

//type properties are properties which belong to type itself, not to instance
// only one copy
// can have type methods also, add static infront of method
class FunWithWords: Palindrome {
    func oxymorons() {
        print("oxycoton")
    }
    
    // need to att @objc infront of impelemented function
    @objc func palindromeCheck(word: String) -> Bool {
        var reverseString = ""
        
        for character in word.characters {
            reverseString = String(character) + reverseString
            print(reverseString)
        }
        
        return (reverseString.stringByReplacingOccurrencesOfString(" ", withString: "").lowercaseString) == word.stringByReplacingOccurrencesOfString(" ", withString: "").lowercaseString
    }
    
    @objc var numberOfWords: Int = 0
    @objc var numberOfCharacters: Int = 0;
    @objc static var longestPalindrome: String = "bobbob"
}

var palindromeOrNot = FunWithWords()

palindromeOrNot.palindromeCheck("bob")

FunWithWords.longestPalindrome



