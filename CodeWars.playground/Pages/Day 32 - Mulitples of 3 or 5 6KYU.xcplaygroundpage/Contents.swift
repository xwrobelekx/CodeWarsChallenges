//: [Previous](@previous)

import Foundation

/*

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.
 
 */


func solution(_ num: Int) -> Int {
  guard num > 0 else { return 0 }
  var sum = 0
  for n in 1..<num {
    if n % 3 == 0 && n % 5 == 0{
        print("3&5")
      sum += n
    } else if  n % 3 == 0 {
        print("3")
      sum += n
    } else if n % 5 == 0{
        print("5")
      sum += n
      }
  }
  return sum
    
}

solution(10) // 23
solution(20) // 78
//solution(10000) // 23_331_668


/*
 
 import XCTest
 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Solution", testSolution),
     ]

     func testSolution() {
         XCTAssertEqual(solution(10), 23)
         XCTAssertEqual(solution(20), 78)
         XCTAssertEqual(solution(200), 9168)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */

//: [Next](@next)
