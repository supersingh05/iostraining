//: Playground - noun: a place where people can play

import UIKit

// type casting
// a way to treat an instance if its a superclass or subclass using as operator
// can check type of instance using is operator

class Book {
    var title: String
    init(title: String) {
        self.title = title
    }
}

class Fiction: Book {
    var author: String
    init(title: String, author: String) {
        self.author = author
        super.init(title: title)
    }
}

class NonFiction: Book {
    var publishedBy: String
    init(title: String, publishedBy: String) {
        self.publishedBy = publishedBy
        super.init(title: title)
    }
}

// array is of type book
let bookLibrary = [
    Fiction(title:"ficTitle1", author:"meF1"),
    NonFiction(title:"ficTitle1", publishedBy:"meNF1"),
    Fiction(title:"ficTitle2", author:"meF2"),
    NonFiction(title:"ficTitle2", publishedBy:"meNF2")

]

// "as" to downcast, "is" for checking type

//"is" returns true if instance of that type, false if not

var fictionCount = 0
var nonFictionCount = 0

for item in bookLibrary {
    if item is Fiction {
        fictionCount += 1
    } else if item is NonFiction {
        nonFictionCount += 1
    }
}

for item in bookLibrary {
    if let fiction = item as? Fiction {
        print("fiction title \(fiction.title)")
    } else if let nonfiction = item as? NonFiction {
        print("non fiction \(nonfiction.title)")
    }
}
// forced version of as is as!



// Any, AnyObject (type aliases)

// AnyObject can represent any instance of a classtype
//Any can represent any kinda type

let bookLibrary2:[AnyObject] = [
    Fiction(title:"ficTitle1", author:"meF1"),
    Fiction(title:"ficTitle2", author:"meF2"),
]

for object in bookLibrary2 {
    let fiction = object as! Fiction
    print("fiction title \(fiction.title)")
}

// same as above
for fiction in bookLibrary2 as! [Fiction] {
    print("fiction title \(fiction.title)")
}

// array of various datatypes
var variousItems = [Any]()
variousItems.append(4)
variousItems.append("bah")
variousItems.append(3.14)




