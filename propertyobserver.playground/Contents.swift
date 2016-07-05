//: Playground - noun: a place where people can play

import UIKit

//property observer, observes and responds to changes in a value

// cannot be written for constants

//observers are willSet and didSet

//willSet called right before value stored
//didSet called right after value stored

class MyBank {

    var bankBalance: Double = 0.0 {
        //newValue is a system var given by swift
        //can change name of newValue by putting var name in parens
//        willSet {
//            print("About to set value \(newValue)")
//        }
        willSet(newBalance) {
            print("About to set value \(newBalance)")
        }
        //oldValue is a system var given by swift
        didSet {
            if bankBalance > oldValue {
                print("added \(bankBalance - oldValue)")
            }
        }
    
    }

}

let balance = MyBank()

balance.bankBalance = 500

balance.bankBalance = 750

balance.bankBalance = 300

