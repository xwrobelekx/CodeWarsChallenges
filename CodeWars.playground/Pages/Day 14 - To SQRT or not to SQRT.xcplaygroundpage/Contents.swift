//: [Previous](@previous)

import Foundation

/*
 #To square(root) or not to square(root)

 Write a method, that will get an integer array as parameter and will process every number from this array.
 Return a new array with processing every number of the input-array like this:

 If the number has an integer square root, take this, otherwise square the number.

 [4,3,9,7,2,1] -> [2,9,3,49,4,1]
 The input array will always contain only positive numbers and will never be empty or null.

 The input array should not be modified!

 Have fun coding it and please don't forget to vote and rank this kata! :-)

 I have also created other katas. Take a look if you enjoyed this kata!
 
 
 
 */


    func squareOrSquareRoot(_ input: [Int]) -> [Int] {
//        var output : [Int] = []
//
//        //solution 1
////        for number in input {
////            let sqrtNumber = sqrt(Double(number))
////            if sqrtNumber.truncatingRemainder(dividingBy: 1.0) == 0 {
////                output.append(Int(sqrtNumber))
////            } else {
////                output.append((number * number))
////            }
////        }
//
//        //solution 2
//        output = input.map {sqrt(Double($0)).truncatingRemainder(dividingBy: 1.0) == 0 ? Int(sqrt(Double($0))) : ($0 * $0) }
//
//
//        print(output)
//        return output
        
        return  input.map {sqrt(Double($0)).truncatingRemainder(dividingBy: 1.0) == 0 ? Int(sqrt(Double($0))) : ($0 * $0) }

        
    }


/*
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(squareOrSquareRoot([4, 3, 9, 7, 2, 1]), [2, 9, 3, 49, 4, 1])
         XCTAssertEqual(squareOrSquareRoot([100, 101, 5, 5, 1, 1]), [10, 10201, 25, 25, 1, 1])
         XCTAssertEqual(squareOrSquareRoot([1, 2, 3, 4, 5, 6]), [1, 4, 9, 2, 25, 36])
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */
//: [Next](@next)
