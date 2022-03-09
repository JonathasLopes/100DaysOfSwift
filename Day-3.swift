//  Created by Jonathas Lopes on 07/03/22.

import Foundation

// Operators: + - / * %
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore // = 16
let difference = firstScore - secondScore // = 8
let product = firstScore * secondScore // = 48
let divided = firstScore / secondScore // = 3
let remainder = 13 % secondScore // = 1

// If you want know if the number is multiple for some number you can try to use
let number = 465
let isMultiple = number.isMultiple(of: 7)

// You can use operator '+' to join strings, like
let fakers = "Fakers gonna "
let action = fakers + "fake" // = "Fakers gonna fake"

// You can use the operator '+' to join arrays, like
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf // = ["John", "Paul", "George", "Ringo"]

// You can use the operators with '='to do a calculation, like
var score = 95
//score -= 5 // = 90, is the same that "score = score - 5"

// Or you can use to join strings, like
var quote = "The rain in Spain falls mainly on the "
//quote += "Spaniards" // = "The rain in Spain falls mainly on the Spaniards"
// Note that, if you need a space between the first string and the second string,
// you need add a space in the end of the first string

// We can comparer numbers and strings too, like
let first = 6
let second = 4
//first == second // = false
//first != second // = true
//first < second // = true
//first >= second // = false
//"Taylor" <= "Swift" // = false

// You can compare enum, like
enum Sizes: Comparable {
    case small
    case medium
    case large
}
let small = Sizes.small
let large = Sizes.large
//print(small < large) // = true, because small comes first in enum

// In conditions, you can do only if{}, or if{} and else{}, or if{} else if{} and else{}
let firstCard = 11
let secondCard = 10
//if firstCard + secondCard == 2 {
//    print("Aces – lucky!")
//} else if firstCard + secondCard == 21 {
//    print("Blackjack!")
//} else {
//    print("Regular cards")
//}
// you can combine 2 or more sentences using "||" to "or", or using "&&" to "and", like
//if (firstCard + secondCard == 2 && firstCard > 10) || secondCard == 10 {
//    print("Aces – lucky!")
//}

// You can use if ternary like
// print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// We have switch case too, like
//switch weather {
//case "rain":
//    print("Bring an umbrella")
//case "snow":
//    print("Wrap up warm")
//case "sunny":
//    print("Wear sunscreen")
//default:
//    print("Enjoy your day!")
//} // default is required!!! you can use fallthrough to continue through the cases...

// You can work with ranges like
//let score = 85
//
//switch score {
//case 0..<50:
//    print("You failed badly.")
//case 50..<85:
//    print("You did OK.")
//default:
//    print("You did great!")
//}
// you can use in arrays too, like -> print(names[1...3])
