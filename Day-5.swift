//  Created by Jonathas Lopes on 10/03/22.

import Foundation

// Func is the keyword to function, and we can use this to put codes that can be repeat in many places.
// You can create a new function, like
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
// You can run the function as
//: printHelp()

// We can pass parameters to the function, like
func square(number: Int) {
    print(number * number)
}
// And you run like this
//: square(number: 8)

// When you need a return value you do like this
func square(number: Int) -> Int {
    return number * number
}
// And you run like this
//: let result = square(number: 8)

// We don't need to write return, but if you are using if else, you need to write or
// you can use if ternary, so you can write like this
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// We can return many things in the same time in a function, like
func getUser() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}
// here we are returning an object array, but we can return a array and a just object too.
//: let user = getUser()
//: print(user["first"])

// We can use the function using two names for the same parameter, like
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
// The word "to", you are gonna use externally, to pass a value when you call the function,
// and the word "name" you are gonna use internally, to use in the function
//: sayHello(to: "Taylor")

// You can't ignore the first name in parameter when you want to use two names, like
func greet(_ person: String) {
    print("Hello, \(person)!")
}
//: greet("Taylor")

// We can pass default parameters like
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
} // "nicely"is default true, so you don't need pass something if you want
//: greet("Taylor")
//: greet("Taylor", nicely: false)

// We can write a function that receives many values but we don't know how much are
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
//: square(numbers: 1, 2, 3, 4, 5)

// Our functions can get a error too, so, we can add a throw in our function
// to send us how error ocurred, but first we need create a enum with some errors and it must
// be based on Swift’s existing Error type, for example
enum PasswordError: Error {
    case tooHigh
    case tooLow
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
//: checkPassword("password")

// We can use try catch to get the error before to run the function, like
//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password.")
//}

// If you want to change the real value that it is passing into the function parameter,
// you can use the keyword inout, like
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
//: doubleInPlace(number: &myNum) // you need to use & before the variable

