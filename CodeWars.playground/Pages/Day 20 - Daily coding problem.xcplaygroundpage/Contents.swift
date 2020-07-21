//: [Previous](@previous)

import Foundation
import PlaygroundSupport

/*
 [EASY]
 Problem asked by amazon
 
 Write a metchod that takes in an Int and returns the number of digits the number has. Should return an int.
 Constraint: dont use any loops.
 
 
 
 */

//this works for positive numbers but if you enter negatve number the it fails due to the "-" sign.
func howManyDigits(in number: Int) -> Int {
    guard number >= 0 else {
        //this fixed the issue.
        return String(number).dropFirst().map({$0}).count
    }
    return String(number).map({$0}).count
}

howManyDigits(in: 1255) // 4
howManyDigits(in: 1) // 1
howManyDigits(in: 123) //3
howManyDigits(in: 123456789) // 9
howManyDigits(in: -12) //2
howManyDigits(in: 0) // 1
howManyDigits(in: -1) //1

//: [Next](@next)
