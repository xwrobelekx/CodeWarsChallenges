//: [Previous](@previous)

import Foundation


/*
 
 Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

 Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
 
 */


func countBits(_ n: Int) -> Int {
    let binaryNumber = String(n, radix: 2)
    var count = 0
    
    for char in binaryNumber {
        if char == "1" {
            count += 1
        }
    }
    return count
}

func countOnes(_ n : Int) -> Int {
    return n.nonzeroBitCount
}

countBits(1234)
countOnes(1234)




/*
 //Other Solutions:
 func countBits(_ n: Int) -> Int {
   return String(n, radix: 2).filter { $0 == "1" }.count
 }
 
 func countBits(_ n: Int) -> Int {
     return n.nonzeroBitCount
 }
 
 
 
 
 //Tests
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(5, countBits(1234));
         XCTAssertEqual(1, countBits(4));
         XCTAssertEqual(3, countBits(7));
         XCTAssertEqual(2, countBits(9));
         XCTAssertEqual(2, countBits(10));
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 */



//: [Next](@next)
