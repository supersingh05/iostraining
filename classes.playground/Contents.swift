//: Playground - noun: a place where people can play

import UIKit

// classes

class Animal {
    //body of class
    
    var Name: String = "init name"
    //initializer
    init() {
        print("Initialized")
    }
    
    func feedMe() {
        print("i want a bannana")
    }
}

var tiger = Animal()
tiger.feedMe()

class Car {
    var name: String = "initial name"
    
    init() {
        
    }
    
    func drive() {
        print("i am driving")
    }
}

var a = Car()
a.name = "Corvette"
a.drive()

class Bus : Car {
    func race() {
        print("who the fuck would race a bus")
    }
    
    override func drive() {
        print("im driving a bus")
        super.drive()
    }
}

var b = Bus()
b.name
b.drive()
b.race()

