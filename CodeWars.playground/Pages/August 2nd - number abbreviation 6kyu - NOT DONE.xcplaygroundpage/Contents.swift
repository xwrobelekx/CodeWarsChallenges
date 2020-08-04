//: [Previous](@previous)

import Foundation

/*
 
 Abbreviate the numbers that are passed in into a smaller format.

 The idea is that if the number 1,260 is passed in, you would return 1.3k.

 Only condense the numbers if they are 1,000 or larger. The highest the will be passed in will be in the 1,000,000,000,000 (1 trillion) range. The smallest will be negative 1 trillion.

 Use the following letters to represent your numbers.

 'k' for thousand
 'm' for million
 'b' for billion
 't' for trillion
 The numbers go to the tenth decimal place and they need to be rounded.

 Exampls:

 -124 should return -124

 103,456 should return 103.5k

 56,783,040,185 should return 56.8b

 1,000 should return 1.0k
 */


func condense(_ num: Int) -> String {
    var count = 0
    var anotation = ""
    let sign = (num < 0) ? "-" : ""
    var number = Int(abs(Double(num)))

    repeat {
        number = number / 1000
        count += 1
    } while number > 10000
    
    let reminder = number % 1000
    let firstNumber = number / 1000
    let roundedNumber = ((reminder + 50) / 100)

    switch count {
    case 0 : anotation = "k"
    case 1 : anotation = "m"
    case 2 : anotation = "b"
    case 3 : anotation = "t"
    default : anotation = ""
    }

    return "\(sign)\(firstNumber).\(roundedNumber)\(anotation)"
}


condense(-1_278_345_345) // 1.3m
condense(100400) //100.4k



/*
 //other solutions:
 

 
 
//Tests:
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {

     static var allTests = [
         ("Test Basic Example", testExample),
         ("Test Negative Numbers", testNegatives),
     ]

     func testExample() {
         XCTAssertEqual(condense(100356), "100.4k")
         XCTAssertEqual(condense(1685), "1.7k")
     }

     func testNegatives() {
         XCTAssertEqual(condense(-2659466153), "-2.7b")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 */

//: [Next](@next)
