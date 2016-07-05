//: Playground - noun: a place where people can play

import UIKit

// tuples
// tuple is an object which groups multiple values in a single compound value
// different from array/dict is that value stored in tuple doesn thave to be of the same type

var meeting = ("board meeting", (NSDate()), true)
var currency = ("US Dollar", 350.00)

// tuple are indexed like an array
meeting.0
meeting.1

currency.0
currency.1

// can name values in tuple also
var meeting2 = (meetingType: "board meeting", date: (NSDate()), presentation: true)
meeting2.meetingType
meeting2.0

//decomposing a tuple

let workItinerary = meeting2.meetingType

let teamPresentation = meeting2.presentation

let (currencyType, amount) = currency
amount
currencyType

// if doesnt wanna access a value, use _
let (currencyType2, _) = currency

//use a tupe with a for in loop in a dictionary

let businessTrips = ["SF": 650.00, "London": 450.00, "NY": 900.00]

for (location, tripExpense) in businessTrips {
    print("blah blah \(location) \(tripExpense)")
}

// tuples can be used as return values in functions

// when return like return (blah, blah)

