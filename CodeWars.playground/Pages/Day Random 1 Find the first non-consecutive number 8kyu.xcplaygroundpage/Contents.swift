//: [Previous](@previous)

import Foundation

/*
 
 
 Your task is to find the first element of an array that is not consecutive.

 By not consecutive we mean not exactly 1 larger than the previous element of the array.

 E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.

 If the whole array is consecutive then return null2.

 The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!

 If you like this Kata, maybe try this one next: https://www.codewars.com/kata/represent-array-of-numbers-as-ranges

 1 Can you write a solution that will return null2 for both [] and [ x ] though? (This is an empty array and one with a single number and is not tested for, but you can write your own example test. )
 
 */



//MY Solution

var arrayOfNumbers : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 10]

func firstNonConsecutive (_ arr: [Int]) -> Int? {
    
    if arr.count <= 1  {
        return nil
    }
    for (index, number) in arr.enumerated() {
        print(" iteration number: \(number), index \(index) arr count: \(arr.count)")
        if index + 1 < arr.count {
            if number + 1 == arr[index + 1] {
                continue
            } else {
                return arr[index + 1]
            }
        }
    }
    
    return nil
}

firstNonConsecutive(arrayOfNumbers)

//func firstNonConsecutive2(_ arr: [Int]) -> Int? {
//
//}

/*
 Other solutions:
 
 func firstNonConsecutive (_ arr: [Int]) -> Int? {
     return arr.enumerated().first { $0 > 0 ? arr[$0 - 1] + 1 != $1 : false }?.element
 }
 
 
 func firstNonConsecutive (_ arr: [Int]) -> Int? {
   for i in 1..<arr.count {
     if arr[i] - arr[i-1] > 1 { return arr[i] }
   }
     return nil
 }

 
 
 
 
 
 
 Test:
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("a simple example", simpleExample)
     ]

     func simpleExample() {
         let first = firstNonConsecutive([1,2,3,4,6,7,8])
         XCTAssertEqual(first, 6)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 */






//: [Next](@next)
