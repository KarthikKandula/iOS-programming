import UIKit

var str = "Hello, playground"

var currentHeartContainers = 3 // var is to declare a variable (inferred as an "int")
// currentHeartContainers = 3.1 // does this work?
let maxHeartContainers = 20 // Constants are declared using the keyword let.
maxHeartContainers // does this work?
// maxHeartContainers = 21 // does this work?

var abc = "Hello"

var naviAttention: String = "Hey!" // explicit type declaration
naviAttention += " Listen"

let sentence = "Text processing is hard"
var position = sentence.firstIndex(of: "h")


var isOK: Bool = true


var pi: Double = 3.1415

print("It’s dangerous to go alone. Take this!")

print("There are currently \(currentHeartContainers) containers ") // string interpolation

var x1 = 10, x2 = 20.5;

x1


x2
// x1 + x2

Double(x1) + x2

// Functions

func makeSound() -> Void {

    print("Roar!!")

}

makeSound();

// ================ TODO ===========
// Write a function that takes 2 integer arguments and returns the larger (or equal) of the two.
// ...

func bigoftwo(a: Int,b: Int) -> Int {
    if a > b {
        return a
    }
    else {
        return b
    }
}

var c = bigoftwo(a: 5, b: 6)


// ========================================================================
// Multiple return values and tuples

func calculateMinMaxSum(a: Int, b: Int) -> (min: Int, max: Int, sum: Int) {

    if a > b {

        return (b, a, a + b)

    } else {

        return (a, b, a + b)

    }

}

let statistics = calculateMinMaxSum(a: 5, b: 19)

let (min2, max2, sum2) = calculateMinMaxSum(a: 5, b: 19)

print(sum2)             // prints 24

print(statistics.sum)   // prints 24
print(statistics.2)     // prints 24 | 2 is the index value in variable

// Arrays

var arrayOfInts: [Int] = [1, 2, 3]
var arrayOfStrings: [String] = ["We", "❤", "Swift"]
for number in arrayOfInts {

    print(number)

}

for name in arrayOfStrings {

    print("Hello " + name + "!")

}

print(arrayOfStrings.count)

var numbers: [Int] = []

for i in 1...5 {

    numbers.append(i) // add elements to the end of an array

    print(numbers)

}

numbers = [1, 2, 3]

numbers.insert(0, at: 0) // numbers will be [0, 1, 2, 3]

numbers.insert(9, at: 1) // numbers will be [0, 9, 1, 2, 3]
numbers.remove(at: 0) // numbers will be [9, 1, 2, 3]
numbers

// Copy Behavior (different from Java!)
numbers = [1, 2, 3]

var otherNumbers = numbers // this will create a copy of numbers unlike java where both reference to the same array

// this will append 4 to otherNumbers but not to numbers

otherNumbers.append(4)

numbers

otherNumbers

// ---------------------------------------------- 5

print("Please enter your name:")

// readLine (https://developer.apple.com/documentation/swift/1641199-readline)

if let name = readLine() { // "if let" = optional binding

    print("Hello, \(name)!")

} else {

    print("Why are you being so coy?")

}

print("TTFN!")

/* // Jan 22nd */

// Class

class SomeClass {

    var favLang: String

    init(favLang: String) { // This is a constructor

        self.favLang = favLang

    }

}

var aClass = SomeClass(favLang: "Assembler") // This is an Object

var bClass = aClass // This is also an Object

bClass.favLang = "Swift"

print(aClass.favLang) // "Swift"

print(bClass.favLang) // "Swift"

// Struct

struct SomeStruct {

    var favLang: String

    init(favLang: String) {

        self.favLang = favLang

    }

}

var aStruct = SomeStruct(favLang: "Assembler")

var bStruct = aStruct

bStruct.favLang = "Swift"

print(aStruct.favLang) // "Assembler" <== This is because structs are "value" types (not "reference" types)

print(bStruct.favLang) // "Swift"

// 8. Switches & Patterns
let somePoint = (1, 1)

//let somePoint = (1, 1)

//let somePoint = (1, 10)

//let somePoint = (1, 11)

switch somePoint {

case (0, 0):

    print("origin")

case (-2...2, -2..<6):

    print("inside the box")

case let (x, y) where x == y % 3:

    print("some calculations")

default:

    print("nirvana")

}

// prints "inside the box"

// 9. Optionals

// optional binding
// https://stackoverflow.com/questions/25828301/how-is-swift-if-let-evaluated
// https://medium.com/@abhimuralidharan/if-let-if-var-guard-let-and-defer-statements-in-swift-4f87fe857eb6
//var reading1: Float = nil  <== can one do this?

var reading1: Float? = 9.8 // ? means variable can be optional

var reading2: Float? = 9.2

var reading3: Float? = 9.7


var avgReading = (reading1! + reading2! + reading3!) / 3 // what if a reading is nil? (! means it can have a value or nil)


if let r1 = reading1, // This is a if statement, if any of the variable has nil it goes to else

 let r2 = reading2,

 let r3 = reading3 {

   let avgReading = (r1 + r2 + r3) / 3
   print(avgReading)

} else {

    let errorString = "Instrument reported a reading that was nil."
    print(errorString)

}

// More example

let possibleNumber:String = "123"
let convertedNumber = Int(possibleNumber) // returns an optional value
 
if convertedNumber != nil {
    print("convertedNumber value: \(convertedNumber)")  // "convertedNumber value: Optional(123)"
    print("convertedNumber value: \(convertedNumber!)") // "convertedNumber has an integer value of 123"
}
