//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//structs define properties, methods, subscripts, initilizers, can be extended, conform to protocols, cannot type case, cannot inherit , struct is a value type. always stores value in itself, not referenced

struct SomeStruct {
    //struct code goes here
    
}


struct Appointments {
    let name: String
    var location: String?
    var dueDate: NSDate?
    var priority: String?
    
    init(name: String) {
        self.name = name
    }
    
    func notes() -> String {
        return "the appt is bla bla bla"
    }
    // mutating allows function to modify a member var
    mutating func outOfCountry() -> String {
        location = "france"
        return location!
    }
}
//swift defides a default memberwise initilizer if none is defined

var appt = Appointments(name: "bob")
appt.location = "328 upper west side"

// all members should have values be initializtion, so maybe make optionals, or add default values

appt.notes()



