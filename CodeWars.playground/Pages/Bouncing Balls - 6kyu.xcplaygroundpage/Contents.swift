//: [Previous](@previous)

import Foundation


/*
 
 
 A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

 He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

 His mother looks out of a window 1.5 meters from the ground.

 How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

 Three conditions must be met for a valid experiment:
 Float parameter "h" in meters must be greater than 0
 Float parameter "bounce" must be greater than 0 and less than 1
 Float parameter "window" must be less than h.
 If all three conditions above are fulfilled, return a positive integer, otherwise return -1.


 */




func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
  
  guard h > 0 && bounce > 0 && bounce < 1 && window < h else { return -1}
  
  var count = 0
  var currentHeight = h
  
  while currentHeight > window {
    currentHeight = currentHeight * bounce
    count += 2
  }
  
  return count - 1
}






import XCTest



class BouncingBallsTests : XCTestCase {
    
    func testequal(_ h: Double, _ bounce: Double, _ window: Double, _ expected: Int) {
        XCTAssertEqual(bouncingBall(h, bounce, window), expected, "❌ Failed On Expected value of : \(expected)")
    }
    
    func testExample() {
        testequal(3, 0.66, 1.5, 3)
        testequal(30, 0.66, 1.5, 15)
        testequal(10, 0.6, 10, -1)
        testequal(40, 1, 10, -1)
    }
    
}



BouncingBallsTests.defaultTestSuite.run()



//: [Next](@next)
