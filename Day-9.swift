//  Created by Jonathas Lopes on 19/03/22.

import Foundation

//Initializers are special methods that provide different ways to create your struct, we can see like this
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
// If we use init in our structs, we must initialize all variables in our struct
// You don’t write func before initializers, but you do need to make sure all properties have a value before the initializer ends.
//: var user = User()
//: user.username = "twostraws"

// We can use the keyword "self" to make possible send parameters to our struct and we can use in an extension, like
struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}
// now we can do this
//: let roslin = Employee(name: "Laura Roslin")
// and this
//: let anon = Employee()

// we can use the keyword "self" to refer our variable in struct like
struct Person1 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
// Here we have two "name" var, the first is our variable inside our struct, and the second is our parameter. So, we can use our parameter and our variable in the same place, but we have to use the keyword "self" to refer our local variable.

// As a performance optimization, Swift lets you create some properties only when they are needed. And we need to use the keyword "lazy" like
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
//: ed.familyTree -> now we can see th value of familyTree

// We can ask Swift to share specific properties and methods across all instances of the struct by declaring them as static, like
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

//: let ed = Student(name: "Ed")
//: let taylor = Student(name: "Taylor")
//: print(Student.classSize) -> print 2
// One common use for static properties and methods is to store common functionality you use across an entire app.

// We have in Swift a control access in our methods and functions, but if we want to use this we have to use the keyword "private", like
struct Person4 {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
            return "My social security number is \(id)"
    }
}
