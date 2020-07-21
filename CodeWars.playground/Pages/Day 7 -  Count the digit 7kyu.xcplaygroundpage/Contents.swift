//: [Previous](@previous)

import Foundation

//7kyu

/*
 Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer. Square all numbers k (0 <= k <= n) between 0 and n. Count the numbers of digits d used in the writing of all the k**2. Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.
 
 
 n is 0 and up
 
 d is 0 thru 9
 
 k is 0 to n
 
 - square all numbers between 0 and n
 - count the number of digits d used in writing of all the k^2
 - if d was 2, then go thru all the numbers and cout the 2s
 -the function returns this count
 
 
 Example:
 
 n = 10, d = 1, the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
 We are using the digit 1 in 1, 16, 81, 100. The total count is then 4.

 nb_dig(25, 1):
 the numbers of interest are
 1, 4, 9, 10, 11, 12, 13, 14, 19, 21 which squared are 1, 16, 81, 100, 121, 144, 169, 196, 361, 441
 so there are 11 digits `1` for the squares of numbers between 0 and 25.
 
 
 
 */


func nbDig(_ n: Int, _ d: Int) -> Int {
    var numbers : [Int] = []
    var count = 0
    for number in 0...n {
        numbers.append(number * number)
    }
    
    for number in numbers {
        let stringNumber = number.description
        for (_, digit) in  stringNumber.enumerated(){
            if digit == d.description.first! {
                count += 1
            }
        }
    }
        
    return count
}

/*
 my other solution
 func nbDig(_ n: Int, _ d: Int) -> Int {
      var numbers : String = ""
      for number in 0...n {
          numbers += String(number * number)
      }
     return numbers.filter({$0 == d.description.first!}).count
 
 }
 
 Number 2
 
 
 var numbers : String = ""
 for number in 0...n {
     numbers += String(number * number)
 }
 return numbers.filter{ String(d).contains($0)}.count

 
 
 //filter goes thru numbers and checks if String(d) contains given element from the whole range( basicly if d is qual to whatever number were on) is so that number is stored in a temporary array. Then were getting a count of that array
 

 
 
 */





/*
 Other solutions:
 
 func nbDig(_ n: Int, _ d: Int) -> Int {
   var count = 0
   for x in 0...n {
     var cube = x * x
     repeat {
       if cube % 10 == d {
         count += 1
       }
       cube = cube / 10
     } while cube >= 1
   }
   return count
 }
 
 
 
 func nbDig(_ n: Int, _ d: Int) -> Int {
     let k = (0 ... n)
     let ksq = k.map{ $0 * $0 }
     let kstrA = ksq.map{ "\($0)" }
     let kstr = kstrA.reduce("", +)
     let fkstr = kstr.filter{ "\($0)" == "\(d)" }
     return fkstr.count
 }
 
 
 func nbDig(_ n: Int, _ d: Int) -> Int {
    return ((0...n).map { String($0 * $0) }.joined()).filter{ String(d).contains($0)}.count
 }

 
 
 
 
 */





/*
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(nbDig(5750, 0), 4700)
         XCTAssertEqual(nbDig(11011, 2), 9481)
         XCTAssertEqual(nbDig(12224, 8), 7733)
         XCTAssertEqual(nbDig(11549, 1), 11905)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */



//: [Next](@next)
