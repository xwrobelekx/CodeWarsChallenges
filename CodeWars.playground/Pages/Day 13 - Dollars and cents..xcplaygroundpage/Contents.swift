//: [Previous](@previous)

import Foundation

/*
 
 Didnt know where to start, but i rememvbered that i did something similar in billy where i needed to round numbers. The extension i had on double worked, but it would cut off the extra 0 at the end. So i did a google search and found string formating that was also rounding numbers, and it worked. String(format: "%.2f", value)
 
 
 
 The company you work for has just been awarded a contract to build a payment gateway. In order to help move things along, you have volunteered to create a function that will take a float and return the amount formatting in dollars and cents.

 39.99 becomes $39.99

 The rest of your team will make sure that the argument is sanitized before being passed to your function although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).

 Examples:

 3 needs to become $3.00

 3.1 needs to become $3.10
 Good luck! Your team knows they can count on you!
 
 
 */

func formatMoney(_ val:Double) -> String {
     return "$\(String(format: "%.2f", val))"
}






/*
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("testDollarsAndCents", testDollarsAndCents),
     ]

     func testDollarsAndCents() {
         XCTAssertEqual(formatMoney(0), "$0.00")
         XCTAssertEqual(formatMoney(3), "$3.00")
         XCTAssertEqual(formatMoney(3.1), "$3.10")
         XCTAssertEqual(formatMoney(3.10), "$3.10")
         XCTAssertEqual(formatMoney(3.100), "$3.10")
         XCTAssertEqual(formatMoney(3.1000000), "$3.10")
         XCTAssertEqual(formatMoney(39.99), "$39.99")
         XCTAssertEqual(formatMoney(314.16), "$314.16")
         XCTAssertEqual(formatMoney(123456789.166666), "$123456789.17")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 
 */
//: [Next](@next)
