//  Created by Jonathas Lopes on 13/03/22.

import Foundation

// Swift provides to us a other type to write function, this method is called "Closure", let's see
let driving = {
    print("I'm driving in my car")
}
// we can call this closure like a function, like
//: driving()

// Here we can see some examples that you can use the closure
// Running some code after a delay.
// Running some code after an animation has finished.
// Running some code when a download has finished.
// Running some code when a user has selected an option from your menu.

// We can pass parameters in a closure like
// let driving = { (place: String) in
//     print("I'm going to \(place) in my car")
// }
//: driving("London")

//: Obs: Closures can't pass external parameters like ...(external internal: String)...

// If you want that the closure return something, you can write like this
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
// if you dont need that send parameter, only return, you can write like this
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// we can pass as parameter in a function too, its crazy, but it's possible! like
//let driving = {
//    print("I'm driving in my car")
//}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//: travel(action: driving)

// If our function has a closure as the last parameter in the function, we can call it using the closure
// this is called trailing closure, lets see
//travel() {
//    print("I'm driving in my car")
//}

// as we can see, how the function travel has a closure as last parameter, so we can pass like this
// If it hasn't other parameters, just the closure, we can remove the (), so it can be write like this
//travel {
//    print("I'm driving in my car")
//}
