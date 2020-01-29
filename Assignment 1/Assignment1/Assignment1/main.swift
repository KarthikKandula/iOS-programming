//
//  main.swift
//  Assignment1
//
//  Created by Karthik Kandula on 1/18/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import Foundation

// Assignment 1 LIsting 2.3

print ("I will find a combination of coins");
print ("that equals that amount of change.");
print ("Enter a whole number from 1 to 99 :", terminator:"");

if let coinsInput = readLine() {
    var num = Int(coinsInput)
    if num != nil {
        print("Number is \(num!)")
        let originalAmount = num
        var quarters = num! / 25
        num = num! % 25
        var dimes = num! / 10
        num = num! % 10
        var nickels = num! / 5
        num = num! % 5
        var pennies = num;
        print ("\(originalAmount!) cents in coins can be given as:");
        print (" \(quarters) quarters");
        print ("\(dimes) dimes");
        print ("\(nickels) nickels and");
        print ("\(pennies!) pennies");
    } else {
        print("Not Number")
    }
} else {
    print("Did not enter a Number")
}

// Assignment 1 LIsting 2.4

let sentence = "Text processing is hard"
print("Original sentence is:")
print(sentence)
if let position = sentence.firstIndex(of: "h") {
    var stringRep1 = sentence[..<position]
    stringRep1 += "Easy!"
    let upperCase = stringRep1.uppercased()
    print("Changed String is:")
    print(upperCase)
}

// Assignment 1 Listing 3.3

print ("Enter your score :", terminator:"");

var scoreInput = readLine()
let num = Int(scoreInput!)
var grade: String?
if num! >= 90 {
    grade = "A"
} else if num! >= 80 {
    grade = "B"
} else if num! >= 70 {
    grade = "C"
} else if num! >= 60 {
    grade = "D"
} else {
    grade = "F"
}
print("Score \(num!)")
print("Grade \(grade!)")
*/
// Assignment 1 Listing 3.4
print ("Enter no. of babies :", terminator:"");

var babiesInput = readLine()
let num = Int(babiesInput!)
switch num {
    case 1:
        print("Contratulations")
    case 2:
        print("Wow. Twins")
    case 3:
        print("Wow. Triplets")
    case 4:
        print ("Unbelieveable; ");
        print (" \(num!) babies.");
    case 5:
        print ("Unbelieveable; ");
        print (" \(num!) babies.");
    default:
        print ("I don't believe you.");
}





