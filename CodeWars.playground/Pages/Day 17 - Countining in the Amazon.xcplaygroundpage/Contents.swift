//: [Previous](@previous)

import Foundation

/*
 Counting in the amazon
 
 The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:
 
 1 = anane
 2 = adak
 3 = adak anane
 4 = adak adak
 5 = adak adak anane
 6 = adak adak adak
 7 = adak adak adak anane
 8 = adak adak adak adak
 
 Take a given number and return the Arara's equivalent.
 
 e.g.
 
 countArara(3) // "adak anane"
 
 countArara(8) // "adak adak adak adak"
 
 
 */

func countArare(_ n: Int) -> String {
    guard n > 0 else {return ""}
    var arareNumber = ""
    if n == 1 {
        return "anane"
    }

    var evenNumber : Int = 0
    evenNumber = n % 2 == 0 ? n : n - 1
    
    for _ in 0..<(evenNumber / 2) {
        arareNumber += "adak "
    }
    
    if n.isMultiple(of: 2) {
        arareNumber.removeLast()
    }
    else {
        arareNumber += "anane"
    }
    return arareNumber
}



countArare(1)
countArare(2)
countArare(3)
countArare(8)
countArare(9)

/*

//My solution 1:
func countArare(_ n: Int) -> String {
    guard n > 0 else {return ""}
    var arareNumber = ""
    if n == 1 {
        return "anane"
    } else if n % 2 == 0 {
        for _ in 0..<(n / 2){
            arareNumber += "adak "
        }
        arareNumber.removeLast()
    } else {
        for _ in 0..<((n - 1) / 2){
            arareNumber += "adak "
        }
        arareNumber += "anane"
    }
    return arareNumber
}

//My solution 2:

func countArare(_ n: Int) -> String {
    guard n > 0 else {return ""}
    var arareNumber = ""
    if n == 1 {
        return "anane"
    }
    var oddnumber : Int = 0
    oddnumber = n % 2 == 0 ? n : n - 1
    
    for _ in 0..<oddnumber {
        arareNumber += "adak "
    }
    
    if n.isMultiple(of: 2) {
        arareNumber.removeLast()
    }
    else {
        arareNumber += "anane"
    }
    return arareNumber
}
 
 //Other solutions:
 func countArare(_ n: Int) -> String {
     guard n > 0 else {return ""}
     var pairs = Array(repeating: "adak", count: n/2)
     if n % 2 == 1 {pairs.append("anane")}
     return pairs.joined(separator: " ")
 }
 
 func countArare(_ n: Int) -> String {
   return String((String(repeating: "adak ", count: n / 2) + String(repeating: "anane ", count: n % 2)).dropLast())
 }
 
 func countArare(_ n: Int) -> String {
   return ((0..<(n / 2)).map { _ in "adak" } + (n % 2 == 0 ? [] : ["anane"])).joined(separator: " ")
 }
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Example Tests", testExample),
     ]

     func testExample() {
         XCTAssertEqual(countArare(1), "anane")
         XCTAssertEqual(countArare(2), "adak")
         XCTAssertEqual(countArare(3), "adak anane")
         XCTAssertEqual(countArare(5), "adak adak anane")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
*/




//: [Next](@next)
