//: Playground - noun: a place where people can play

import UIKit

//declare them in a class, struct, enumeration
//can use them anywhere in code


struct Math {
    var width = 10.0
    var height = 10.0
    
    //computed property
    var area: Double {
        get {
            return width * height
        }
        set(newArea) {
            let squareRoot = sqrt(newArea)
            width = squareRoot
            height = squareRoot
        }
    }
}

var squared = Math.init()
squared.width
squared.height
squared.area
squared.area = 25



