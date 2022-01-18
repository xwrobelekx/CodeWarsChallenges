//: [Previous](@previous)

import Foundation

//Sum of two lowest positive integers
/*
 
 Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

 For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

 [10, 343445353, 3453445, 3453545353453] should return 3453455.

 */


func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    var arr = array
    var firstNum = (number: array[0], index: 0)
    
    for (index, number) in arr.enumerated() {
        if number < firstNum.number {
            firstNum = (number, index)
        }
    }
    
    arr.remove(at: firstNum.index)
    var secondNum = arr[0]
    
    for number in arr {
        if number < secondNum {
            secondNum = number
        }
    }
    return firstNum.number + secondNum
}

sumOfTwoSmallestIntegersIn([5, 5, 12, 44, 22])//, 13)


//Other solutions:
/*
 func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
   return array.sorted()[0...1].reduce(0, +)
 }
 
 func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
   return array.sorted().prefix(upTo: 2).reduce(0, +)
 }
 
 
 */




import XCTest

class SolutionTest: XCTestCase {


    func basicTests() {
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]), 13)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]), 19)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]), 30)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]), 6)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]), 17)
    }
}

SolutionTest.defaultTestSuite.run()




//: [Next](@next)
