//: [Previous](@previous)

import Foundation

//6kyu



/*
 You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
 
 Examples
 
 [2, 4, 0, 100, 4, 11, 2602, 36]
 Should return: 11 (the only odd number)
 
 [160, 3, 1719, 19, 11, 13, -21]
 Should return: 160 (the only even number)
 
 
 */

//Time complexity O(n) Linear, Space complexity O(n) Linear
func findOutlier(_ array: [Int]) -> Int {
    
    // we can sort the array one for even and one for odd number - then return the one that has lesser count
    var evenArray : [Int] = []
    var oddArray : [Int] = []
    for number in array {
        if number % 2 == 0 {
            evenArray.append(number)
        } else {
            oddArray.append(number)
        }
        if evenArray.count == 1 && oddArray.count > 1 {
            break
        } else if evenArray.count > 1 && oddArray.count == 1 {
            break
        }
    }
    return evenArray.count > oddArray.count ? oddArray[0] : evenArray[0]
}

//func findOutlier2(_ array: [Int]) -> Int {
//    let evenNumbers = array.filter{$0 % 2 == 0}
//
//
//}



findOutlier([2, 4, 0, 100, 4, 11, 2602, 36]) // 11
findOutlier([160, 3, 1719, 19, 11, 13, -21])// 160


/*
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         let actual = 1
         XCTAssertEqual(actual, 1)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */
//: [Next](@next)
