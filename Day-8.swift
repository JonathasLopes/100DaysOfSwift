//  Created by Jonathas Lopes on 17/03/22.

import Foundation

// In swift, we can create structs that we can add variables, constants and functions, this properties is called stored properties and we can use these however we want, we can build a struct like
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
//: print(tennis.name)
// We can change the info by
//: tennis.name = "Lawn tennis"

// what's the difference bettween tuples and struct?
// use tuples when you want to return two or more arbitrary pieces of values from a function, but prefer structs when you have some fixed data you want to send or receive multiple times.
// tuples are a anonymous struct, but both do the same

// We have a kind of property called a computed property that runs code to figure out its value like
struct Sport1 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

// It can return different values depending on the other properties
let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
//: print(chessBoxing.olympicStatus)

// Property observers let you run code before or after any property changes.
// We have two observers that are didSet and willset,  let us attach functionality to be run before or after a property is changed, respectively
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

// Structs can have functions inside them, and these functions are called methods but they still use the keyword func! like
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
//: london.collectTaxes()

// When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
//: person.makeAnonymous()

// In Swift, the strings are structs and many others types are too like int, double and etc..., so we can use some methods and properties of a string struct like:
let string = "Do or do not, there is no try."
//: print(string.count) -> like a length in others languages
//: print(string.hasPrefix("Do")) -> verify if exists a word in the string
//: print(string.uppercased()) -> uppercase all the string
//: print(string.sorted()) -> It will sort all the letters and save in an array
// there are many methods and properties that you can use!

// We can manipulate an array using methods and properties pre defined to arrays, because arrays are consider a struct too!
var toys = ["Woody"]
//: print(toys.count) -> shows the length of array
//: toys.append("Buzz") -> add a new info to array
//: toys.firstIndex(of: "Buzz") -> shows where is the first index of the string is
//: print(toys.sorted()) -> order in crescent the array using the info stored inside the array
//: toys.remove(at: 0) -> remove the info in array using the index
// there are many methods and properties that you can use!

