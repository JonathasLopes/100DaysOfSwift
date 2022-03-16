//  Created by Jonathas Lopes on 13/03/22.

import Foundation

// If we can pass parameters in our closure inside a function, we can do it! like
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
//: travel { (place: String) in
//      print("I'm going to \(place) in my car")
//  }

// So, we can receive a return in our closure parameter, like
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
//: travel2 { (place: String) -> String in
//      return "I'm going to \(place) in my car"
//  }

// The swift knows that the parameter is a string, so we can remove it like
//: travel2 { place -> String in
//      return "I'm going to \(place) in my car"
//  }

// And it also knows that it has to return a string, so we can remove it too like
//: travel2 { place in
//      return "I'm going to \(place) in my car"
//  }

// And as the closure has one line and this is the return, we can remove it too like
//: travel2 { place in
//      "I'm going to \(place) in my car"
//  }

// And swift provides to us a shorthand too that we can use rather than "place in"
// we just to write a dollar sign before and a number that starts in 0 like
//: travel2 {
//      "I'm going to \($0) in my car"
//  }

// ADVANCED CLOSURES

// When receive two or more parameters like
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

//: travel3 {
//      "I'm going to \($0) at \($1) miles per hour."
//  }

// We can return closures by a function too, like
// First "->" is the type of value that the closure'll get
// Second "->" is the type of return of our closure and our closure's value
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
//: let result = travel4()
//: result("London")
// Or
//: let result2 = travel4()("London")

// We can capture some values inside our closure, like
// If we want to put a counter to know how much times this function was called
// All variables created before the return, won't create again, so this will
// update always the function call
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
