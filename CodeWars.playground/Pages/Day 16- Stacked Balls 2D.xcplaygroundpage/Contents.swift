//: [Previous](@previous)

import Foundation





/*
 
 I have stacked some pool balls in a triangle.

 Like this,

 pool balls
 Kata Task

 Given the number of layers of my stack, what is the total height?

 Return the height as multiple of the ball diameter.

 Example

 The image above shows a stack of 5 layers.
 
 */

func stackHeight2D(_ layers: Int) -> Double {
  guard layers > 0 else { return 0}
  return layers == 1 ? 1 : ((Double(layers - 1) * 0.866033) + 1)
}

/*
 Other solutions:
 
 func stackHeight2D(_ layers: Int) -> Double {
     return layers > 0 ? 3.0.squareRoot() * (Double(layers) - 1) / 2 + 1 : 0
 }
 
 
 
 
 import XCTest

 class SolutionTest: XCTestCase {
   let accuracy = 0.001
   
   static var allTests = [
     ("Test Height One", testHeightOne),
     ("Test Height Two", testHeightTwo),
   ]

   func checkResultsFor(layers: Int, expected: Double) {
     let actual = stackHeight2D(layers)

     XCTAssertEqual(actual, expected, accuracy: accuracy,
         String(format: "Tested Height %d:\n Expected %.3f (+/- %.3f)\n Received %.3f\n", layers, expected, accuracy, actual))
   }

   func testHeightOne() {
     checkResultsFor(layers: 1, expected: 1)
   }
                                                         
   func testHeightTwo() {
     checkResultsFor(layers: 2, expected: 1.866)
   }
 }


 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */

//: [Next](@next)
