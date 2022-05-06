//  Created by Jonathas Lopes on 02/04/22.

import Foundation

// Protocols are a way of describing what properties and methods something must have. like:
protocol Identifiable {
    var id: String { get set }
}

func displayID(thing: Identifiable) {
    //: print("My ID is \(thing.id)")
}

// There is a method called protocol inheritance, in this method you can inherit from multiple protocols ate the sqme time, like:
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

//: protocol Employee: Payable, NeedsTraining, HasVacation { }

// We can use extensions too! In Swift we have a keyword called extension, whitch help us to create methods reusable, for example:

extension Int {
    func squared() -> Int {
        return self * self
    }
}

//: let number = 8
//: number.squared()
