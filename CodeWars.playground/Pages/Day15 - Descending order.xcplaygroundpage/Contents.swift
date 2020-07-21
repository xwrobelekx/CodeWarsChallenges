//: [Previous](@previous)

import Foundation
/*
 
 Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

 Examples:

 Input: 21445 Output: 54421

 Input: 145263 Output: 654321

 Input: 1254859723 Output: 9875543221
 
 */



func descendingOrder(of number: Int) -> Int {
    let sortedNumber = String(number).sorted(by: >)
    return Int(sortedNumber.reduce("", {String($0) + String($1)}))!
}

descendingOrder(of: 12354355)


/*
 
 
 //other solutions:
 
 func descendingOrder(of number: Int) -> Int {
   return Int(String("\(number)".characters.sorted(by: >)))!
 }
 
 
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(descendingOrder(of: 0), 0)
         XCTAssertEqual(descendingOrder(of: 15), 51)
         XCTAssertEqual(descendingOrder(of: 123456789), 987654321)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */


//: [Next](@next)
