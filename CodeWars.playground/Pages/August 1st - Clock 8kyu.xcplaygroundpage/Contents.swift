//: [Previous](@previous)

import Foundation

/*
 //Beginers series - Clock
 
 Clock shows 'h' hours, 'm' minutes and 's' seconds after midnight.

 Your task is to make 'Past' function which returns time converted to milliseconds.

 Example:

 past(0, 1, 1) == 61000
 Input constraints: 0 <= h <= 23, 0 <= m <= 59, 0 <= s <= 59
 
 */


func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    return h*3600000 + m*60000 + s*1000
}


past(0, 1, 1)


/*
 //Other solutions
 func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
     return (s + ((m + (h * 60)) * 60)) * 1000
 }
 
 
 
 //Tests:
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic tests", basicTests)
     ]

     func basicTests() {
         XCTAssertEqual(past(0, 1, 1), 61000)
         XCTAssertEqual(past(1, 1, 1), 3661000)
         XCTAssertEqual(past(0, 0, 0), 0)
         XCTAssertEqual(past(1, 0, 1), 3601000)
         XCTAssertEqual(past(1, 0, 0), 3600000)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */


//: [Next](@next)
