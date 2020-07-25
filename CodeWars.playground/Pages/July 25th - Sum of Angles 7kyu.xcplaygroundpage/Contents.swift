//: [Previous](@previous)

import Foundation

//Find the total sum of internal angles in an n-sided simple polygon. N will be greater than 2.

func angle(_ n: Int) -> Int {
    return (n - 2) * 180
}


angle(4)

/*
 
 //Testes:
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic tests", basicTests)
     ]

     func basicTests() {
         XCTAssertEqual(angle(3), 180)
         XCTAssertEqual(angle(4), 360)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */

//: [Next](@next)
