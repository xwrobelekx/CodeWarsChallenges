//: [Previous](@previous)

import Foundation

/*
 
 Task

 Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ().

 Consider an Example :

 With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:

 1 * (2 + 3) = 5
 1 * 2 * 3 = 6
 1 + 2 * 3 = 7
 (1 + 2) * 3 = 9
 So the maximum value that you can obtain is 9.

 Notes

 The numbers are always positive.
 The numbers are in the range (1  ≤  a, b, c  ≤  10).
 You can use the same operation more than once.
 It's not necessary to place all the signs and brackets.
 Repetition in numbers may occur .
 You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.
 Input >> Output Examples:

 expressionsMatter(1,2,3)  ==>  return 9
 Explanation:

 After placing signs and brackets, the Maximum value obtained from the expression (1+2) * 3 = 9.

 expressionsMatter(1,1,1)  ==>  return 3
 Explanation:

 After placing signs, the Maximum value obtained from the expression is 1 + 1 + 1 = 3.

 expressionsMatter(9,1,1)  ==>  return 18
 Explanation:

 After placing signs and brackets, the Maximum value obtained from the expression is 9 * (1+1) = 18.
 */


func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    
    //My Solution:
    //first im thinking of doing a case for each
    
    //this solution works but i dont like this repetition let see if we can refactor this:
  //  var firsttOutput = 0
//    var highestOutput = 0
//    highestOutput = a * b * c > highestOutput ? a * b * c : highestOutput
//    highestOutput = (a + b) * c > highestOutput ? (a + b) * c : highestOutput
//    highestOutput =  a * (b + c) > highestOutput ? a * (b + c) : highestOutput
//    highestOutput =  a + b + c > highestOutput ? a + b + c : highestOutput
//    return highestOutput
//    return secondOutput > firsttOutput ? secondOutput : firsttOutput
    
    //Other solutions
    
    return max((a * b * c), (a + b + c), (a + b) * c, a * (b + c))
    
    
}



expressionMatter(2, 1, 2)//, 6)
expressionMatter(2, 1, 1)//, 4)
expressionMatter(1, 1, 1)//, 3)
expressionMatter(1, 2, 3)//, 9)
expressionMatter(1, 3, 1)//, 5)
expressionMatter(2, 2, 2)//, 8)
expressionMatter(5, 1, 3)//, 20)
expressionMatter(3, 5, 7)//, 105)
expressionMatter(5, 6, 1)//, 35)
expressionMatter(1, 6, 1)//, 8)
expressionMatter(2, 6, 1)//, 14)
expressionMatter(6, 7, 1)//, 48)
expressionMatter(2, 10, 3)//), 60)
expressionMatter(1, 8, 3)//, 27)
expressionMatter(9, 7, 2)//, 126)
expressionMatter(1, 1, 10)//), 20)
expressionMatter(9, 1, 1)//, 18)
expressionMatter(10, 5, 6)//), 300)
expressionMatter(1, 10, 1)//), 12)


/*
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic tests", basicTests),
     ]

     func basicTests() {
         XCTAssertEqual(expressionMatter(2, 1, 2), 6)
         XCTAssertEqual(expressionMatter(2, 1, 1), 4)
         XCTAssertEqual(expressionMatter(1, 1, 1), 3)
         XCTAssertEqual(expressionMatter(1, 2, 3), 9)
         XCTAssertEqual(expressionMatter(1, 3, 1), 5)
         XCTAssertEqual(expressionMatter(2, 2, 2), 8)
         XCTAssertEqual(expressionMatter(5, 1, 3), 20)
         XCTAssertEqual(expressionMatter(3, 5, 7), 105)
         XCTAssertEqual(expressionMatter(5, 6, 1), 35)
         XCTAssertEqual(expressionMatter(1, 6, 1), 8)
         XCTAssertEqual(expressionMatter(2, 6, 1), 14)
         XCTAssertEqual(expressionMatter(6, 7, 1), 48)
         XCTAssertEqual(expressionMatter(2, 10, 3), 60)
         XCTAssertEqual(expressionMatter(1, 8, 3), 27)
         XCTAssertEqual(expressionMatter(9, 7, 2), 126)
         XCTAssertEqual(expressionMatter(1, 1, 10), 20)
         XCTAssertEqual(expressionMatter(9, 1, 1), 18)
         XCTAssertEqual(expressionMatter(10, 5, 6), 300)
         XCTAssertEqual(expressionMatter(1, 10, 1), 12)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 */
//: [Next](@next)
