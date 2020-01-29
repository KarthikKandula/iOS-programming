//
//  main.swift
//  testReadLine
//
//  Created by Karthik Kandula on 1/15/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import Foundation

// To print the items without a trailing newline, pass an empty string as terminator.
print("Please enter your email: ", terminator: "")

if let email = readLine() {
    
    // Check out https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
    // for various string/char manipulation techniques
    
    // find the index of @ (if exists; else, gets the endIndex)
    let index = email.index(of: "@") ?? email.endIndex
    
    // if @ symbol is detected
    if index != email.endIndex {
        // get the index right after @
        let indexAfter = email.index(after: index)
    
        // get the string after @
        let domain = email[indexAfter...]
    
        if domain == "ilstu.edu" {
            let ULID = email[..<index]
            print("Hello, \(ULID)! You have been registered.")
        } else {
            print("You must have an ISU email to register!")
        }
    } else {
        print("Email must have @ symbol")
    }
} else {
    print("Why are you being so coy?")
}

print("TTFN!")

print("Please enter your email: ", terminator: "")

if let email = readLine() {
    if email.hasSuffix("ilstu.edu") {
        print("Your email below has been registered:")
        
        // note that you cannot index via int (because eah Character in a string takes up diff space)
        for index in email.indices {
            print("\(email[index]) ", terminator: "")
        }
    } else {
        print("You must have an ISU email to register!")
    }
    
} else {
    print("Why are you being so coy?")
}

print("TTFN!")
