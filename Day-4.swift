//  Created by Jonathas Lopes on 09/03/22.

import Foundation

// Loops using For, you can do something like
let count = 1...10

//for number in count {
//    print("Number is \(number)")
//}

// or read an array, like
let albums = ["Red", "1989", "Reputation"]

//for album in albums {
//    print("\(album) is on Apple Music")
//}

// Or you don't need a const or var created, like
//for _ in 1...5 {
//    print("play")
//}

// You can use while too, like
var num = 1
//while num <= 20 {
//    print(num)
//    num += 1
//}

// The famous "do while" will become "repeat while", like
//repeat {
//    print(number)
//    number += 1
//} while number <= 20

// you can use the shuffle to create a random variable like
let numbers = [1, 2, 3, 4, 5]
let random = numbers.shuffled() // it can be return [5,4,3,2,1], or [1,4,3,5,2] or [1,2,3,4,5]
//or other sequence, because its a random.

// If you want exit a loop, you can use the keyword "break", like
//while countDown >= 0 {
//    print(countDown)
//
//    if countDown == 4 {
//        print("I'm bored. Let's go now!")
//        break
//    }
//
//    countDown -= 1
//}

// You can do loop inside a loop, like
//for i in 1...10 {
//    for j in 1...10 {
//        let product = i * j
//        print ("\(i) * \(j) is \(product)")
//    }
//}

// You can exit in all loop using labels and break, like
//outerLoop: for i in 1...10 {
//    for j in 1...10 {
//        let product = i * j
//        print ("\(i) * \(j) is \(product)")
//
//        if product == 50 {
//            print("It's a bullseye!")
//            break outerLoop
//        }
//    }
//}

// We can use the keyword "continue" to skip the current item, like
//for i in 1...10 {
//    if i % 2 == 1 {
//        continue
//    }
//
//    print(i)
//}

// We can do some infinite loop like
//while true {
//    print(" ")
//}
