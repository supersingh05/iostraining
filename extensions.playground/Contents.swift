//: Playground - noun: a place where people can play

import UIKit

//extensions allow you to add new functionality to class, enumeration, struct, protocol

// can add computed properties, add methods, add initilizer , define subscripts, nested types, protocols
//extensions do NOT override existing functionality

//extension example

extension Int {
    // new functionality
    
    var feetInMile: Int {return self * 5280}
    var inchInMile: Int {return self * 63360}
}

let marathonInFeet = 26.feetInMile

let marathonInInches = 26.inchInMile

let marathonInMeters = Double(26.feetInMile)/3.2808

//extending type with protocol

extension someType: AProtocol, AnotherProtocol {
    // implementation
}