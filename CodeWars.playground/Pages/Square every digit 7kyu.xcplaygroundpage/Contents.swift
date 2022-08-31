//: [Previous](@previous)

import Foundation

// Square every digit

/*
 
In this kata, you are asked to square every digit of a number and concatenate them.

For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer

*/


// MARK: -  My solution
func squareDigits(_ num: Int) -> Int {

  var number = num
  var squaredDigits = [Int]()

  while number > 0 {
    let currentDigit = number % 10
    squaredDigits.insert(currentDigit * currentDigit, at: 0)
    number = number / 10
  }
    
  return Int(squaredDigits.map(String.init).joined()) ?? 0
}

// MARK: - Other Solutions:
/*
 
 func squareDigits(_ num: Int) -> Int {
   let ints = String(num).map { Int(String($0)) ?? 0 }
   let squares = ints.map { $0*$0 }
   return Int(squares.map {  String($0) }.joined()) ?? 0
 }
 
 func squareDigits(_ num: Int) -> Int {
 
     let result = "\(num)"
       .compactMap { Int("\($0)") }
       .map { "\($0 * $0)" }
       .joined()
     return Int(result) ?? 0
 }
 
 func squareDigits(_ num: Int) -> Int? {
   
   if num < 10 { return num * num }
  
   var number = num
   var squareNumberArray: [Int] = []
   var digit: Int
   
   while number > 0 {
     digit = number % 10
     squareNumberArray.insert(digit * digit, at: 0)
     number = number / 10
   }
   
   let squareDigits = Int(squareNumberArray.map{String($0)}.joined())
   return squareDigits
  
   
 }
 
 */

import XCTest

class SquareEveryDigitTests: XCTestCase {
    
    func testInvalidNumber() {
        XCTAssertEqual(squareDigits(3212), 9414, "Invalid answer for 3212")
    }
    
    func testInvalidNumber2() {
        XCTAssertEqual(squareDigits(2112), 4114, "Invalid answer for 2112")
    }
    
    func testCorrectAnswer() {
        XCTAssertEqual(squareDigits(0), 0, "Invalid answer for 2112")
    }
}

SquareEveryDigitTests.defaultTestSuite.run()



//: [Next](@next)
