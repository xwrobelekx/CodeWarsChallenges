//: [Previous](@previous)

import Foundation

/*
 Persistent bugger 6kyu
 
 Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

 For example:

  persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
                        // and 4 has only one digit

  persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
                         // 1*2*6 = 12, and finally 1*2 = 2

  persistence(for: 4) === 0 // because 4 is already a one-digit number
 */

func persistence(for num: Int) -> Int {
    guard num > 10 else {return 1}
    var number = num
    var digits = [Int]()
    var count = 0
    
    while number >= 10 {
        while number >= 10 {
            
            digits.append(number % 10)
            number /= 10
        }
        digits.append(number)
        number = digits.reduce(1, {$0 * $1})
        digits = []
        count += 1
    }
    return count
}

persistence(for: 125)


/*
 // other solutions
 func persistence(for num: Int) -> Int {
   let digits: [Int] = String(num).characters.flatMap { Int(String($0)) }
   
   return digits.count == 1 ? 0 : 1 + persistence(for: digits.reduce(1, *))
 }
 
 
 //tests:
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Persistence", testPersistence),
         ("Test Persistence", testPersistenceAgain)
     ]

     func testPersistence() {
         XCTAssertEqual(persistence(for: 18), 1)
     }

     func testPersistenceAgain() {
         XCTAssertEqual(persistence(for: 28), 2)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */
//: [Next](@next)
