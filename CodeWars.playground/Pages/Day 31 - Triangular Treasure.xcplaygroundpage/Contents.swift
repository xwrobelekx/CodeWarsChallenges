//: [Previous](@previous)

import Foundation

//7KYU

/*
 Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

 1st (1)   2nd (3)    3rd (6)
 *          **        ***
            *         **
                      *
 You need to return the nth triangular number. You should return 0 for out of range values:

   triangular(0)==0
   triangular(2)==3
   triangular(3)==6
   triangular(-10)==0
 
 
 */

func triangular(_ n: Int) -> Int{
    guard n > 0 && n < Int.max else {return 0 }
    var total = 0
    for row in 0...n {
        print(row)
        total += row
    }
    return total
}

triangular(0)//==0
triangular(2)//==3
triangular(3)//==6
triangular(-10)//==0
triangular(10)

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
