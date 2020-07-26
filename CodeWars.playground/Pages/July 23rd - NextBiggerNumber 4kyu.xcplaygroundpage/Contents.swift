//: [Previous](@previous)

import Foundation
/*
 //Next Bigger Number:
 
 Create a function that takes a positive integer and returns the next bigger number that can be formed by rearranging its digits. For example:
 
 12 ==> 21
 513 ==> 531
 2017 ==> 2071
 nextBigger(num: 12)   // returns 21
 nextBigger(num: 513)  // returns 531
 nextBigger(num: 2017) // returns 2071
 If the digits can't be rearranged to form a bigger number, return -1 (or nil in Swift):
 
 9 ==> -1
 111 ==> -1
 531 ==> -1
 nextBigger(num: 9)   // returns nil
 nextBigger(num: 111) // returns nil
 nextBigger(num: 531) // returns nil
 
 
 
 
 
 
 */


//var k = [1, 2, 3, 4]
//k.reverse()
//k.swapAt(0, 3)
//k.reverse()
//print(k)




func nextBigger(num: Int) -> Int? {
    
    var reversedNumberArray = String(num).compactMap {Int(String($0))}
    reversedNumberArray.reverse()
    
    var results : [Int] = []
    
    for (ind, n) in reversedNumberArray.enumerated() {
        print("n: \(n), ind: \(ind)")
        
        for (index, number) in reversedNumberArray.enumerated() {
            print("n: \(n), index: \(index), number: \(number)")
            if n > number && index >= ind {
                print("here bc \(n) > \(number) && \(index) >= \(ind)")
                reversedNumberArray.swapAt(ind, index)
                reversedNumberArray.reverse()
                let joinedNumber = reversedNumberArray.map {"\($0)"}.reduce(""){$0 + $1}
                print(joinedNumber)
                //return Int(joinedNumber)!
                results.append(Int(joinedNumber)!)
            } else {
                
            }
        }
    }
    
    return results.sorted()[0]
}

//nextBigger(num: 6746544)
nextBigger(num: 144) // returns 441, should 414 so its giving me right results but i need the second one or smaller one

/*
 //Other Solutions:
 
 
 
 
 
 
 
 
 //Tests:
 import XCTest

 class SolutionTest: XCTestCase {
   static var allTests = [
       ("Sample test cases", testSampleCases),
   ]

   func testSampleCases() {
     XCTAssertEqual(nextBigger(num: 12), 21)
     XCTAssertEqual(nextBigger(num: 513), 531)
     XCTAssertEqual(nextBigger(num: 2017), 2071)
     XCTAssertEqual(nextBigger(num: 414), 441)
     XCTAssertEqual(nextBigger(num: 144), 414)
   }
 }

 XCTMain([
   testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */
//: [Next](@next)
