//
//  main.swift
//  Closure
//
//  Created by iFlame on 13/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

import Foundation
//-------------------------------- simple Closure----------------------------------------
let studname = { print("Welcome to Swift Closures") }
studname()


// ---------------------------Variable Using in Integer(Closure)------------------------
let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print(result)


// ------------------------------Using Function in Closure-------------------------------
func ascend(_ s1: Int,_ s2: Int) -> Bool {
    return s1 > s2
}
let stringcmp = ascend(20,50)
print(stringcmp)

//------------------------------Using Closure in Addition of Two Values--------------------
let sum = {(no1: Int, no2: Int) -> Int in
    return no1 + no2
}
let digits = sum(10, 20)
print(digits)

/*
// ---------------------------------Sorting The Values-----------------------------------
let count = [5, 10, -6, 75, 20]
var descending = count.sorted{ n1, n2 in n1 > n2 }
var ascending = count.sorted{ n1, n2 in n1 < n2 }

print(descending)
print(ascending)
*/
var shorthand: (String, String) -> String
shorthand = { $1 }
print(shorthand("100", "200"))

/*
 let numb = [98, -20, -30, 42, 18, 35]
 var sortedNumbers = numb.sorted{ (
 (left: Int, right: Int) -> Bool in
 return left < right
 })
 let asc = numb.sorted(<)
 print(asc) */

// Closuer========================Example

func networkCall(compilationHandler: (Int)->(Float)) -> Void
{
    print("process Goes Here")
    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
        let valuefloat = compilationHandler(10)
        print("value float \(valuefloat)")
    })
}

networkCall{(value) -> (Float) in
    print("value int = \(value)")
    return 1.0
}
