//
//  main.swift
//  Assign2
//
//  Created by Karthik Kandula on 1/31/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import Foundation
// Assignment 2

/*
 // ******************************************************
 //
 // Part A
 //
 // ******************************************************
 
print ("How many temperatures do you have? ", terminator:"")

// Reading no of temperatures
if let noOfTemp = Int(readLine()!) {
    print ("Number of temperatures is \(noOfTemp)")
    var arrayOfTemps : [Float] = []
    var sum: Float = 0
    print("Enter a total of \(noOfTemp) temperatures")
    // Reading temperatures
    for n in 1...noOfTemp {
        print("Enter Tempature - \(n): ", terminator:"")
        var readTemp = Float(readLine()!)
        arrayOfTemps.append(readTemp!)
        sum += Float(arrayOfTemps[n-1])
    }
    print("Sum of temperatures is \(sum)")
    // Calculating the average
    var average = sum / Float(arrayOfTemps.count)
    print("The average temperature is \(average)")
    // Displaying each temperatures with relation to the average
    for n in 1...noOfTemp {
        if arrayOfTemps[n-1] < average {
            print("\(arrayOfTemps[n-1]) below average")
        } else if arrayOfTemps[n-1] > average {
            print("\(arrayOfTemps[n-1]) above average")
        }
        else {
            print("\(arrayOfTemps[n-1]) equal to average")
        }
    }
}
print("Have a nice week") */


/*
// ******************************************************
//
// Part B
//
// ******************************************************


class Fraction {
    var nume: Int
    var denom: Int
    
    init(numerator: Int, denominator: Int) {
        self.nume = numerator
        self.denom = denominator
    }
    
    func multiply( frac2: Fraction) -> Fraction {
        let resNum = nume * frac2.nume
        let resDen = denom * frac2.denom
        return reduce(frac1: Fraction(numerator: resNum, denominator: resDen) )
    }

    func divide(frac2: Fraction) -> Fraction {
        let resNum = nume * frac2.denom
        let resDen = denom * frac2.nume
        return reduce(frac1: Fraction(numerator: resNum, denominator: resDen) )
    }

    func addition(frac2: Fraction) -> Fraction {
        let gcdAdd = gcd(a: denom, b: frac2.denom)
        let lcmAdd = lcm(a: denom, b: frac2.denom, c: gcdAdd)
        
        let frac1Multiplier = lcmAdd / denom
        let frac2Multiplier = lcmAdd / frac2.denom
        
        let frac1Nume = (nume * frac1Multiplier) + (frac2.nume * frac2Multiplier)
        
        return reduce(frac1: Fraction(numerator: frac1Nume, denominator: lcmAdd) )
    }

    func subtraction(frac2: Fraction) -> Fraction {
        let gcdSub = gcd(a: denom, b: frac2.denom)
        let lcmSub = lcm(a: denom, b: frac2.denom, c: gcdSub)
        
        let frac1Multiplier = lcmSub / denom
        let frac2Multiplier = lcmSub / frac2.denom
        
        let frac1Nume = (nume * frac1Multiplier) - (frac2.nume * frac2Multiplier)
        
        return reduce(frac1: Fraction(numerator: frac1Nume, denominator: lcmSub) )
    }

    func reduce(frac1: Fraction) -> Fraction {
        var nu = frac1.nume
        var de = frac1.denom
        for n in 1...20 {
            if nu % n == 0 && de % n == 0 {
                nu = nu / n
                de = de / n
            }
        }
        return Fraction(numerator: nu, denominator: de)
    }

    func lcm(a: Int, b: Int, c: Int) -> Int {
        return (a * b) / c
    }

    func gcd(a: Int, b: Int) -> Int {
        if a == 0 {
            return b
        }
        return gcd(a: b % a, b: a)
    }
}

var f1 = Fraction(numerator: 1, denominator: 2)
var f2 = Fraction(numerator: 1, denominator: 3)

var f3 = f1.multiply( frac2: f2)
var f4 = f1.divide( frac2: f2)
var f5 = f1.addition( frac2: f2)
var f6 = f1.subtraction(frac2: f2)

print("Fractions are \(f1.nume)/\(f1.denom) and \(f2.nume)/\(f2.denom) \n")

print(" Addition --> \(f1.nume)/\(f1.denom) + \(f2.nume)/\(f2.denom) = \(f5.nume)/\(f5.denom)")
print(" Subtraction --> \(f1.nume)/\(f1.denom) - \(f2.nume)/\(f2.denom) = \(f6.nume)/\(f6.denom)")
print(" Multiply --> \(f1.nume)/\(f1.denom) * \(f2.nume)/\(f2.denom) = \(f3.nume)/\(f3.denom)")
print(" Divide --> \(f1.nume)/\(f1.denom) / \(f2.nume)/\(f2.denom) = \(f4.nume)/\(f4.denom) \n")
*/


/*
// ******************************************************
//
// Part C
//
// ******************************************************


// ***************************************************************
// GoShopping class declaration
// ***************************************************************
class GoShopping {

    init() {
    }
    
    var itemName: String?
    var price: Float?
    var quantity: Int?
    var continueVar: String?

    var addToCartFlag = 1
    var cart: ShoppingCart?
    
    func Shopping() {
        repeat {
            print("Enter the name, price, and quantity of the item ")
            
            print("Enter Name: ", terminator:"")
            itemName = readLine()
            
            print("Enter price: ", terminator:"")
            price = Float(readLine()!)
            
            print("Enter quantity: ", terminator:"")
            quantity = Int(readLine()!)
            
            let item = Item(name_init: itemName!, price_init: price!, quantity_init: quantity!)
            item.discount()
            
            if addToCartFlag == 1 {
                cart = ShoppingCart(itemCount_init: item.quantity, totalPrice_init: (item.price * Float(item.quantity)), cartItem: item)
                cart?.printDetails(item: item)
            } else {
                cart?.addToCart(itemDetails: item)
            }
            
            print("Do you want to continue? (Y/N)", terminator:"")
            continueVar = readLine()
            
            addToCartFlag += 1
        } while (continueVar == "Y" || continueVar == "y")
        
        print("\n You finished shopping")

        print("\n Please pay \(cart!.getTotalPrice(cart: cart!))")
    }
}

// ***************************************************************
// ShoppingCart class declaration
// ***************************************************************
class ShoppingCart {
    var itemCount: Int
    var totalPrice: Float
    var capacity: Int = 3
    var cartItems: [Item] = []
    var defaultCapacity: Int = 3
    
    init(itemCount_init: Int, totalPrice_init: Float, cartItem: Item) {
        self.itemCount = itemCount_init
        self.totalPrice = totalPrice_init
        self.cartItems.append(cartItem)
    }
    
    var addToCartFlag = 1
    

    // -------------------------------------------------------
    //  Adds an item to the shopping cart. ADD to cart function
    // -------------------------------------------------------
    func addToCart(itemDetails: Item) {
        itemCount += itemDetails.quantity
        totalPrice += itemDetails.price * Float(itemDetails.quantity)
        capacity -= itemDetails.quantity
        cartItems.append(itemDetails)

        addToCartFlag += 1
        
    // checking if cart capacity is zero
        if capacity <= 0 {
            increaseCartSize()
        }
        printDetails(item: itemDetails)
    }

    // ------------------------------------------------------------
    //  Increases the capacity of the shopping cart by doubling it.
    // -----------------------------------------------------------
    func increaseCartSize() {
        defaultCapacity *= 2 // doubling the capacity
        capacity = defaultCapacity
    }
    
    // -------------------------------------------------------
    //  Returns the contents of the cart together with summary information.
    // This method is called when an object needs to be printed
    // -------------------------------------------------------
    func printDetails(item: Item) {
        print("\n You added below item to your cart")
        print("Item Name: \(item.name) ")
        //print("Item Price: \(item.price)")
        print("Item Price: \(formatter.string(from: item.price as NSNumber)!)")
        print("Item Quantity: \(item.quantity as NSNumber) \n")
        
        // printing cart details
        print("Your Cart Details")
        print("Total quantity in your cart \(itemCount as NSNumber)")
        print("Total cost of items in your cart \(formatter.string(from: (totalPrice) as NSNumber)!)")
        print("No. of items in your cart \(cartItems.count) \n")
    }
    
    // -------------------------------------------------------
    //  Returns the totalPrice. // Function to return the total price
    // -------------------------------------------------------
    func getTotalPrice(cart: ShoppingCart) -> String {
        let totalPrice = cart.totalPrice as NSNumber
        return formatter.string(from: totalPrice)!
    }
}

// ***************************************************************
// Discountable protocol
// ***************************************************************
protocol Discountable {
    func discount()
}

// ***************************************************************
// Item class declaration
//Represents an item in a shopping cart.
// ***************************************************************
class Item : Discountable {
    var name: String
    var price: Float
    var quantity: Int
    
    init(name_init: String, price_init: Float , quantity_init: Int) {
        self.name = name_init
        self.price = price_init
        self.quantity = quantity_init
    }
    
    // -------------------------------------------------
    //  Applies discount to the item
    // -------------------------------------------------
    func discount() {
        var discountPercentage: Int
        if price > 200 {
            discountPercentage = 20
            price = price * 0.80
        } else if price > 150 {
            discountPercentage = 15
            price = price * 0.85
        } else if price > 100 {
            discountPercentage = 10
            price = price * 0.90
        } else if price > 50 {
            discountPercentage = 5
            price = price * 0.95
        } else {
            discountPercentage = 0
            print("\n No Discount applied for this item")
        }
        print("\n Discount for this item - \(discountPercentage)%")
    }
    
    // -------------------------------------------------
    //   Returns the unit price of the item
    // -------------------------------------------------
    func getPrice() -> Float {
        return price
    }
    
    // -------------------------------------------------
    //   Returns the name of the item
    // -------------------------------------------------
    func getName() -> String {
        return name
    }
    
    // -------------------------------------------------
    //   Returns the quantity of the item
    // -------------------------------------------------
    func getQuantity() -> Int {
        return quantity
    }
}

// formatter object declaration
var formatter = NumberFormatter()
formatter.usesGroupingSeparator = true
formatter.numberStyle = .currency
formatter.locale = Locale.current

var abc = GoShopping()
abc.Shopping()
*/


/*
// ******************************************************
//
// Part F (ii)
//
// ******************************************************
*/

// ***************************************************************
// Item class for Part F (ii)
// ***************************************************************
class Item : Comparable {
    static func < (lhs: Item, rhs: Item) -> Bool {
        return lhs.price < rhs.price
    }
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.price == rhs.price
    }
    
    static func > (lhs: Item, rhs: Item) -> Bool {
        return lhs.price > rhs.price
    }
    
    var name: String
    var price: Float
    var quantity: Int
    
    init(name_init: String, price_init: Float , quantity_init: Int) {
        self.name = name_init
        self.price = price_init
        self.quantity = quantity_init
    }
    
    // -------------------------------------------------
    //   Prints details of the items
    // -------------------------------------------------
    func printDetails() {
        print("Item Name: \(name) ")
        print("Item Price: \(formatter.string(from: price as NSNumber)!)")
        print("Item Quantity: \(quantity) \n")
    }
}

// formatter object declaration
var formatter = NumberFormatter()
formatter.usesGroupingSeparator = true
formatter.numberStyle = .currency
formatter.locale = Locale.current

print("Enter price of first item ", terminator:"")
var price1 = Float(readLine()!)
print("\nEnter price of second item ", terminator:"")
var price2 = Float(readLine()!)

var item1 = Item(name_init: "Milk", price_init: price1!, quantity_init: 1)
var item2 = Item(name_init: "Bread", price_init: price2!, quantity_init: 1)


var abc = item1 > item2
print("Cart sorted to less expensive item first ")
print("\nYour cart details \n")
if item1 > item2 {
    item2.printDetails()
    item1.printDetails()
} else {
    item1.printDetails()
    item2.printDetails()
}

