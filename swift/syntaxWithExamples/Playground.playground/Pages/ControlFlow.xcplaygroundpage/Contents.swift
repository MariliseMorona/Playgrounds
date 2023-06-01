//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
let individualScore = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScore {
    // if é sempre uma condição booleana, e é necessário atribuir de forma explicita para que o compilador interprete
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)!"
}

let nickName: String? = nil
let fullName: String = "John Apllessed"
let informalgREETING = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable{
case "celery":
    print("Add some raisins and make ants on a long.")
case "cucumbe", "watercress":
    print("That a wold make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0

for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            }
        }
    }
}
var key = ""
for (_key, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            key = _key
            }
        }
    }
}

print(largest)
print(key)

var n = 2
while n < 100 {
    n *= 2
}
