//: [Previous](@previous)

import Foundation


/*
 
 Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

 Return your answer as a number.
 
 
 
 */

func sumMix(_ arr: [Any]) -> Int {
    var numbersArr: [Int] = []
//    for i in arr {
//        if i is Int {
//            numbersArr.append(i as! Int)
//        } else if i is String {
//            let number = Int(i)
//                numbersArr.append(number)
//
//        }
//    }
//
//    return numbersArr.reduce(0) { (result, nextNumber) -> Int in
//       return result + nextNumber
//    }
    
    
    
    for item in arr {
        if let number = item as? Int {
            numbersArr.append(number)
        }
        if let string = item as? String, let number = Int(string) {
            numbersArr.append(number)
        }
    }
    
    
    
//    let intArr = arr.compactMap { $0 as? Int }
//    print(intArr)
    return numbersArr.reduce(0) { (result, a) -> Int in
        result + a
    }
    
}


let arr1 = [1, 2, 3, 4, 5]
let arr2 : [Any] = [1, "2", "3", 4, 5]

sumMix(arr2)
sumMix(arr1)


/*
 Other solutions
 
 func sumMix(_ arr: [Any]) -> Int {
   return arr.map{ $0 as? Int ?? Int($0 as? String ?? "0")! }.reduce(0, +)
 }
 
 func sumMix(_ arr: [Any]) -> Int {
     return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
 }
 
 
 
 
 */






/*
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasic),
     ]
     
     func testBasic() {
         XCTAssertEqual(sumMix([9, 3, "7", "3"]), 22)
         XCTAssertEqual(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]), 42)
         XCTAssertEqual(sumMix(["3", 6, 6, 0, "5", 8, 5, "6", 2,"0"]), 41)
         XCTAssertEqual(sumMix(["1", "5", "8", 8, 9, 9, 2, "3"]), 45)
         XCTAssertEqual(sumMix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)
     }
         
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */








//: [Next](@next)
