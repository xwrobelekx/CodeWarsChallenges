//: [Previous](@previous)

import Foundation

//6KYU - NOT DONE

/*
 
 Born a misinterpretation of this kata, your task here is pretty simple: given an array of values and an amount of beggars, you are supposed to return an array with the sum of what each beggar brings home, assuming they all take regular turns, from the first to the last.

 For example: [1,2,3,4,5] for 2 beggars will return a result of [9,6], as the first one takes [1,3,5], the second collects [2,4].

 The same array with 3 beggars would have in turn have produced a better out come for the second beggar: [5,7,3], as they will respectively take [1,4], [2,5] and [3].

 Also note that not all beggars have to take the same amount of "offers", meaning that the length of the array is not necessarily a multiple of n; length can be even shorter, in which case the last beggers will of course take nothing (0).

 Note: in case you don't get why this kata is about English beggars, then you are not familiar on how religiously queues are taken in the kingdom ;)
 
 
 */

func beggars(_ values: [Int], _ n: Int) -> [Int] {
    
    var arrayOfBeggers = [Int](repeating: 0, count: n)
    
   
    
    
//    while !values.isEmpty {
//        for value in 0...n {
//            let numeber = values.removeFirst() ?? 0
//            arrayOfBeggers[value] += number
//
//        }
//    }
    
    return arrayOfBeggers
    
}

beggars([1, 2, 3, 4, 5, 6], 3)





/*
 
 import XCTest

 class BeggarsTests: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasics),
     ]


     func testBasics() {
         XCTAssertEqual(beggars([1,2,3,4,5],1),[15])
         XCTAssertEqual(beggars([1,2,3,4,5],2),[9,6])
         XCTAssertEqual(beggars([1,2,3,4,5],3),[5,7,3])
         XCTAssertEqual(beggars([1,2,3,4,5],6),[1,2,3,4,5,0])
         XCTAssertEqual(beggars([1,2,3,4,5],0),[])
     }
 }

 XCTMain([
     testCase(BeggarsTests.allTests)
 ])
 
 
 
 
 
 */

//: [Next](@next)
