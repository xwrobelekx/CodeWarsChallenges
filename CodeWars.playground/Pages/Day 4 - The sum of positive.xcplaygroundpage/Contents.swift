//: [Previous](@previous)

import Foundation

/*
 
 You get an array of numbers, return the sum of all of the positives ones.

 Example [1,-4,7,12] => 1 + 7 + 12 = 20

 Note: if there is nothing to sum, the sum is default to 0.
 
 */

func sumOfPositives (_ numbers: [Int] ) -> Int {
    var sum = 0
    for number in numbers {
        if number > 0 {
            sum += number
        }
    }
    return sum
    
    
//    return numbers.map {$0 > 0 ? sum += $0 : 0}
    
    
    
}

let arr1 = [1,2,3,4,5] //15
let arr2 = [1, -1, 2, -2, 3] //6
let arr3 = [Int]() //0
let arr4 = [-5] //0

sumOfPositives(arr1)
sumOfPositives(arr2)
sumOfPositives(arr3)
sumOfPositives(arr4)

/*
 Best practice:
 
 func sumOfPositives (_ numbers: [Int] ) -> Int {
     return numbers.filter{ $0 > 0 }.reduce(0, +)
 }
 
 //other soltutions
 func sumOfPositives (_ numbers: [Int] ) -> Int {
     return numbers.lazy.filter { $0 > 0 }.reduce(0, +)
 }
 
 */




/*
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(sumOfPositives([1,2,3,4,5]), 15);
         XCTAssertEqual(sumOfPositives([1,-2,3,4,5]), 13);
         XCTAssertEqual(sumOfPositives([-1,2,3,4,-5]), 9);
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */

//: [Next](@next)
