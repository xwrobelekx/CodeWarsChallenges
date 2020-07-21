//: [Previous](@previous)

import Foundation

/*

Write function bmi that calculates body mass index (bmi = weight / height ^ 2).

if bmi <= 18.5 return "Underweight"

if bmi <= 25.0 return "Normal"

if bmi <= 30.0 return "Overweight"

if bmi > 30 return "Obese"
*/


func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / ( pow(height, 2))
    
    if bmi <= 18.5 {
        return "Underweight"
    } else if bmi <= 25.0 {
        return "Normal"
    } else if bmi <= 30.0 {
        return "Overweight"
    } else {
        return "Obese"
    }
    
}

bmi(50, 1.80)

bmi(80, 1.80)

bmi(110, 1.80)



/*
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", basicTests),
     ]

     func basicTests() {
         XCTAssertEqual("Underweight", bmi(50, 1.80))
         XCTAssertEqual("Normal", bmi(80, 1.80))
         XCTAssertEqual("Overweight", bmi(90, 1.80))
         XCTAssertEqual("Obese", bmi(110, 1.80))
         XCTAssertEqual("Normal", bmi(50, 1.50))
     }
     
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 Other solutions:
 
 func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight)/pow(height, 2)
    return bmi <= 18.5 ? "Underweight" : (bmi <= 25.0 ? "Normal" : (bmi <= 30.0 ? "Overweight" : "Obese"))
 }

 
 func bmi(_ weight: Int, _ height: Double) -> String {
     let index = Double(weight) / (height * height)
     if index <= 18.5 {return "Underweight"}
     if index <= 25.0 {return "Normal"}
     if index <= 30.0 {return "Overweight"}
     return "Obese"
 }
 
 
 */

//: [Next](@next)
