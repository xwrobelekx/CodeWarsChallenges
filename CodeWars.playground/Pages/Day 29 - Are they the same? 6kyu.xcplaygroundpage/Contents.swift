//: [Previous](@previous)

import Foundation

/*
 
 Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

 Examples

 Valid arrays

 a = [121, 144, 19, 161, 19, 144, 19, 11]
 b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
 comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:

 a = [121, 144, 19, 161, 19, 144, 19, 11]
 b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
 Invalid arrays

 If we change the first number to something else, comp may not return true anymore:

 a = [121, 144, 19, 161, 19, 144, 19, 11]
 b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
 comp(a,b) returns false because in b 132 is not the square of any number of a.

 a = [121, 144, 19, 161, 19, 144, 19, 11]
 b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
 comp(a,b) returns false because in b 36100 is not the square of any number of a.

 Remarks

 a or b might be [] (all languages except R, Shell). a or b might be nil or null or None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell, PureScript).

 If a or b are nil (or null or None), the problem doesn't make sense so return false.

 If a or b are empty then the result is self-evident.

 a or b are empty or not empty lists.
 
 */

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    if a.isEmpty || b.isEmpty || a.count != b.count {
        return false
    }
    var bArraySqrt = b.map{Int(sqrt(Float($0)))}
    var numberMatch = false
    
    for number in a {
        for numberB in bArraySqrt {
            if number == numberB {
                numberMatch = true
                break
            }
        }
        if !numberMatch {
            return false
        }
        numberMatch = false
    }
    return true
}


var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19, 12];
comp(a1, a2) // true);
a1 = [121, 144, 19, 161, 19, 144, 19, 11];
a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
comp(a1, a2)//, false);


/*
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("comp", testExample),
     ]

     func testing(_ a: [Int], _ b: [Int], _ expected: Bool) {
         XCTAssertTrue(comp(a, b) == expected, "should return \(expected)")
     }

     func testExample() {
         var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
         var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
         testing(a1, a2, true);
         a1 = [121, 144, 19, 161, 19, 144, 19, 11];
         a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
         testing(a1, a2, false);
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 */

//: [Next](@next)
