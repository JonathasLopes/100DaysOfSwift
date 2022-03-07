//  Created by Jonathas Lopes on 06/03/22.

import Foundation

// Array is a collection that store many items in a sigle variable and you can find its items by index (starting at zero)
let array = ["one", "two", "three"]
let array2: [String] = ["one", "two", "three"]

// set is like array, but it doesn't store duplicate item and It don't store in order
let setValue = Set(["one", "two", "three", "two", "three"]) // ["three", "one", "two"]

// Tuples can't add or remove items from a tuple and you can't change the type of items.
var myName = (first: "Jonathas", last: "Lopes")
// myName.0 => Jonathas
// myName.first => Jonathas

// Dictionary is a collections that you can access by a custom key, if the dictionary doesn't find a key, It will return "nil"
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
] // heights["Taylor Swift"] => 1.78
// If you want return a default value when It doesn't find a key, you can use "default"
// heights["Jonathas Lopes", default: "1.0"] => 1.0

// Creating all empty collections
var teams = [String: String]() // Empty Dictionary [:]
var results = [Int]() // Empty Array []
var words = Set<String>() // Empty Set []
var scores = Dictionary<String, Int>() // Empty Dictionary [:]
var results2 = Array<Int>() // Empty Array []
// If you can set a key-value in an empty dictionary
// teams["Paul"] = "Red"

// Enumerable defined by enum
enum Result {
    case success
    case failure
} // Result.success => success

// you can add details to enums too, like
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
} // Activity.talking(topic: "soccer")

// You can set raw values to enum, like
enum Planet: Int {
    case mercury // 0
    case venus // 1
    case earth // 2
    case mars // 3
} // Planet(rawValue: 2) => earth
// If you want that enum starts in other number of index, you can set in first value a new index like 1 or 2.. default is 0


