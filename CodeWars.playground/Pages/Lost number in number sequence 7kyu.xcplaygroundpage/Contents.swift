//: [Previous](@previous)

import Foundation

/*
 An ordered sequence of numbers from 1 to N is given. One number might have deleted from it, then the remaining numbers were mixed. Find the number that was deleted.

 Example:

 The starting array sequence is [1,2,3,4,5,6,7,8,9]
 The mixed array with one deleted number is [3,2,4,6,7,8,1,9]
 Your function should return the int 5.
 If no number was deleted from the starting array, your function should return the int 0.

 Note: N may be 1 or less (in the latter case, the first array will be []).
 */

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
  
  if array.isEmpty {return 0}
  
  let arr = mixArray.sorted()
  
  for (i, number) in arr.enumerated() {
    if number != array[i] {
      return array[i]
    }
  }
  return 0
  
}


//othrer solutions:

//func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
//  return array.first(where: { !mixArray.contains($0) }) ?? 0
//}
//
//func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
//    return array.reduce(0, +) - mixArray.reduce(0, +)
//}



import XCTest


class LostNumberTests : XCTestCase {
    
    
    func testExample1() {
           XCTAssertEqual(findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5, "❌ Failed on text example 1")
       }
}

LostNumberTests.defaultTestSuite.run()


//: [Next](@next)
