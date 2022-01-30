//: [Previous](@previous)

import Foundation


/*
 Build a function that returns an array of integers from n to 1 where n>0.

 Example : n=5 --> [5,4,3,2,1]
 */


///Solution # 1
func reverseSeq(n: Int) -> [Int] {
  return Array(1...n).reversed()
}

//Solution #2
//func reverseSeq(n: Int) -> [Int] {
//    var numbers : [Int] = []
//    for i in 1...n {
//        numbers.insert(i, at: 0)
//    }
//
//  return  numbers
//}

//Other Solutions:
//func reverseSeq(n: Int) -> [Int] {
//    let strid = stride(from: n, to: 0, by: -1)
//    print(strid)
//  return stride(from: n, to: 0, by: -1).compactMap { $0 }
//}



import XCTest

class ReversedSequenceTest : XCTestCase {
    
    
    func testExample1() {
        XCTAssertEqual(reverseSeq(n: 5), [5, 4, 3, 2, 1], "❌Failed On simple test One")
    }
}


ReversedSequenceTest.defaultTestSuite.run()



//: [Next](@next)
