//  Created by Jonathas Lopes on 22/03/22.

import Foundation

// Classes are similar to structs in that they allow you to create new types with properties and methods. We can create a class like this:
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
//: let poppy = Dog(name: "Poppy", breed: "Poodle")

// We have some difference between structs and classes:
// Classes do not come with synthesized memberwise initializers.
// One class can be built upon (“inherit from”) another class, gaining its properties and methods.
// Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
// Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
// Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.

// SubClassing -> It inherits all the properties and methods of the original class, and can add its own on top. This is called class inheritance or subclassing, the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// Child classes can replace parent methods with their own implementations, this is known as overriding
class Dog1 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle1: Dog1 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Poodle1()
//:poppy.makeNoise()

// Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.
final class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other. Like:
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
//: print(singer.name) -> will print Taylor Swift
var singerCopy = singer
//: singerCopy.name = "Justin Bieber"
//: print(singer.name) -> will print Justin Bieber
// But if we change the class to struct, this will print Taylor Swift

// Classes can have deinitializers – code that gets run when an instance of a class is destroyed. Like
class Person3 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}
//: for _ in 1...3 {
//:    let person = Person3()
//:    person.printGreeting()
//: }

// If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant. However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

class Singer1 {
    var name = "Taylor Swift"
}

let taylor = Singer1()
//: taylor.name = "Ed Sheeran"
//: print(taylor.name) -> will print Ed Sheeran

// Variable classes can have variable properties changed
// Constant classes can have variable properties changed
// Variable structs can have variable properties changed
// Constant structs cannot have variable properties changed
