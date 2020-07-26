//: [Previous](@previous)

import Foundation

/*
 // Maximum multiple
 
 Task

 Given a Divisor and a Bound , Find the largest integer N , Such That ,

 Conditions :

 N is divisible by divisor

 N is less than or equal to bound

 N is greater than 0.

 Notes

 The parameters (divisor, bound) passed to the function are only positve values .
 It's guaranteed that a divisor is Found .
 Input >> Output Examples

 maxMultiple (2,7) ==> return (6)
 Explanation:

 (6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .

 maxMultiple (10,50)  ==> return (50)
 Explanation:

 (50) is divisible by (10) , (50) is less than or equal to bound (50) , and (50) is > 0 .*

 maxMultiple (37,200) ==> return (185)
 Explanation:

 (185) is divisible by (37) , (185) is less than or equal to bound (200) , and (185) is > 0 .


 
 */

func maxMultiple(_ d: Int, _ b: Int) -> Int {
    var bound = b
    while bound > 0 {
        if bound % d == 0 {
            return bound
        }
        bound -= 1
    }
    return b
}
//
//func maxMultiple(_ d: Int, _ b: Int) -> Int {
//    return b - b % d
//}

maxMultiple(2,7)


/*
 //Other solutions:
 
 func maxMultiple(_ d: Int, _ b: Int) -> Int {
     return b - b % d
 }
 
 func maxMultiple(_ d: Int, _ b: Int) -> Int {
     return (b / d) * d
 }
 
 
 
 
 //Tests:
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic tests", basicTests)
     ]

     func basicTests() {
         XCTAssertEqual(maxMultiple(2, 7), 6)
         XCTAssertEqual(maxMultiple(3, 10), 9)
         XCTAssertEqual(maxMultiple(7, 17), 14)
         XCTAssertEqual(maxMultiple(10, 50), 50)
         XCTAssertEqual(maxMultiple(37, 200), 185)
         XCTAssertEqual(maxMultiple(7, 100), 98)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 */

//: [Next](@next)
