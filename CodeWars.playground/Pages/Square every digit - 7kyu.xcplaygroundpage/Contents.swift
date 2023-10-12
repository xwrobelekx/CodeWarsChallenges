//: [Previous](@previous)

import Foundation

// Square every digit - 7kyu
// Link: https://www.codewars.com/kata/546e2562b03326a88e000020
// Objective: Square every digit of a number and concatenate them.
 
// Example:
// 9119, returns 811181, because 9 squared is 81 and 1 squared is 1. 9-1-1-9 -> 81-1-1-81

// MY approach:
// 1. Capture number locally in a var so it can be manipulated
// 2. Create placeholder array to store each digit - after the maths is performed
// 3. Run a while loop on the number until its exhausted.
// 4. In the loop - grab current digit, square it, and insert it to the array. than remove that digit from the number
// 5. In order to concatenate the results, map thru the array, tune each digit into a String, then join them and then return the final result as an Int

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

func squareDigits2(_ num: Int) -> Int {
    let ints = String(num).map { Int(String($0)) ?? 0 }
    let squares = ints.map { $0*$0 }
    return Int(squares.map {  String($0) }.joined()) ?? 0
}

func squareDigits3(_ num: Int) -> Int {
    let result = "\(num)"
        .compactMap { Int("\($0)") }
        .map { "\($0 * $0)" }
        .joined()
    return Int(result) ?? 0
}

func squareDigits4(_ num: Int) -> Int? {
    if num < 10 {
        return num * num
    }
    
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

// MARK: - Tests:

import XCTest

class SquareEveryDigitTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(squareDigits(3212), 9414)
        XCTAssertEqual(squareDigits2(3212), 9414)
        XCTAssertEqual(squareDigits3(3212), 9414)
        XCTAssertEqual(squareDigits4(3212), 9414)
    }
    
    func testExample2() {
        XCTAssertEqual(squareDigits(2112), 4114)
        XCTAssertEqual(squareDigits2(2112), 4114)
        XCTAssertEqual(squareDigits3(2112), 4114)
        XCTAssertEqual(squareDigits4(2112), 4114)
    }
    
    func testZero() {
        XCTAssertEqual(squareDigits(0), 0)
        XCTAssertEqual(squareDigits2(0), 0)
        XCTAssertEqual(squareDigits3(0), 0)
        XCTAssertEqual(squareDigits4(0), 0)
    }
}

SquareEveryDigitTests.defaultTestSuite.run()

//: [Next](@next)
