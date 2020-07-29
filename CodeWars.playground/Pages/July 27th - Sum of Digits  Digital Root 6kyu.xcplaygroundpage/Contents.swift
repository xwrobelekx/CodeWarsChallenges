//: [Previous](@previous)

import Foundation

/*
 
 
 Sum of Digits / Digital Root
 
 Digital root is the recursive sum of all the digits in a number.

 Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

 Examples

     16  -->  1 + 6 = 7
    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
 
 
 */



func digitalRoot(of number: Int) -> Int {
    
    var currentNumber = number
    var digits : [Int] = []
    
    while currentNumber > 0 {
        var lastdigit = currentNumber - (currentNumber / 10) * 10
        currentNumber = currentNumber / 10
        digits.append(lastdigit)
    }
  
    let result = digits.reduce(0, +)

    if result > 9 { return digitalRoot(of: result)}
    
    return result
}


digitalRoot(of: 456)



/*
 //Other Solutions
 
 func digitalRoot(of number: Int) -> Int {
     return (1 + (number - 1) % 9)
 }
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(digitalRoot(of: 16), 7);
         XCTAssertEqual(digitalRoot(of: 456), 6);
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 //Tests:
 
 import XCTest
 import Glibc // for random()

 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("dist", testExample1),
         ("speed", testExample2),
     ]

     func assertFuzzyEquals(_ actu: Double, _ expe: Double) {
         var inrange: Bool; let merr: Double = 1e-10; var e: Double;
         if expe == 0.0
             {e = abs(actu)}
         else
             {e = abs((actu - expe) / expe)}
         inrange = (e <= merr)
         if inrange == false {
             print(String(format:"Expected should be near: %.12f", expe));
             print(String(format:"but got: %.12f", actu))
         }
         XCTAssertEqual(inrange, true)
     }

     func dotest1(_ v: Double, _ mu: Double, _ expected: Double) {
           print("dist \(v) \(mu)")
         assertFuzzyEquals(dist(v, mu), expected)
     }
     func dotest2(_ d: Double, _ mu: Double, _ expected: Double) {
           print("speed \(d) \(mu)")
         assertFuzzyEquals(speed(d, mu), expected)
     }

     func testExample1() {
       dotest1(144, 0.3, 311.83146449201496)
         dotest1(92, 0.5, 92.12909477605366)
         dotest1(142, 0.2, 435.94398509960854)
     }
     func testExample2() {
       dotest2(159, 0.8, 153.79671564846308)
         dotest2(164, 0.7, 147.91115701756493)
         dotest2(153, 0.7, 142.14404997566152)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */
//: [Next](@next)
