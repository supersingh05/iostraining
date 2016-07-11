//
//  Facts.swift
//  Animal Facts
//
//  Created by Asavir Kalla on 7/10/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import Foundation

class RandomFacts {
    let factsArray = ["fact 1 blab bla bla bla bla", "fact 2 blab bla bla bla bla", "fact 3 blab bla bla bla bla", "fact 4 blab bla bla bla bla", "fact 5 blab bla bla bla bla", "fact 6 blab bla bla bla bla", "fact 7 blab bla bla bla bla", "fact 8 blab bla bla bla bla", "fact 9 blab bla bla bla bla", "fact 10 blab bla bla bla bla"]
    
    func randomFact() -> String {
        // get count of facts arr as uint32 so arc4random can take it
        let arrayCount = UInt32(factsArray.count)
        let randomNumberUnsigned = arc4random_uniform(arrayCount)
        // casting uint32 to normal int
        let randomNumberInt = Int(randomNumberUnsigned)
        // return a string from random string
        return factsArray[randomNumberInt]
    }
}