//: [Previous](@previous)

import Foundation


//Simple but got stuck on it for a while. First i did fully undrstand the question or i didnt read the instructions well. Then the code was provided but it was wrong - Basic math for area was wrong.

/*
 Instructions
 Output
 John wants to decorate a room with wallpaper. He's heard that making sure he has the right amount of wallpaper is more complex than it sounds. He wants a fool-proof method for getting it right.

 John knows that the rectangular room has a length of l meters, a width of w meters, a height of h meters. The standard width of the rolls he wants to buy is 52 centimeters. The length of a roll is 10 meters. He bears in mind however, that it’s best to have an extra length of wallpaper handy in case of mistakes or miscalculations so he wants to buy a length 15% greater than the one he needs.

 Last time he did these calculations he got a headache, so could you help John? Your function wallpaper(l, w, h) should return as a plain English word in lower case the number of rolls he must buy.

 Example:

 wallpaper(4.0, 3.5, 3.0) should return "ten"

 wallpaper(0.0, 3.5, 3.0) should return "zero"

 Notes:

 all rolls (even with incomplete width) are put edge to edge
 0 <= l, w, h (floating numbers), it can happens that w x h x l is zero
 the integer r (number of rolls) will always be less or equal to 20
 FORTH: the number of rolls will be a positive or null integer (not a plain English word; this number can be greater than 20)
 
 
 */



func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    let wall1 = (l * h * 2)
    let wall2 = (w * h * 2)
    if wall1 == 0 || wall2 == 0 {return numbers[0]}
    let roomArea = wall1 + wall2
    let singleRollArea = 0.52 * 10
    let rollsNeeded = (roomArea / singleRollArea) * 1.15
    let neededRollsIndex = Int((rollsNeeded).rounded(.up))
    if neededRollsIndex < 21 {
        return numbers[neededRollsIndex]
    } else {
        return "\(neededRollsIndex)"
    }
}

wallpaper(6.3, 5.8, 3.13)
wallpaper(0.0, 2.9, 3.29)
wallpaper(6.3, 4.5, 3.29)
wallpaper(0.0, 6.7, 2.81)


/*
 Other Solutions:
 
 func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
     let numbers = ["zero", "one", "two", "three", "four", "five",
                "six", "seven", "eight", "nine", "ten",
                "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
     
     guard !l.isZero, !w.isZero, !h.isZero else { return numbers.first! }
     let rollSquare = 0.52 * 10.0
     let extraFactor = 1.15
     let numberOfOppositeWalls = 2.0
         
     let roomDimensions = (l + w) * h * numberOfOppositeWalls
     let rollsToBuy = (roomDimensions * extraFactor) / rollSquare
     return numbers[Int(rollsToBuy.rounded(.up))]
 }
 
 
 
 
 func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
     let numbers = ["zero", "one", "two", "three", "four", "five",
                "six", "seven", "eight", "nine", "ten",
                "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
     return l*w*h == 0 ? "zero" : numbers[Int((l * 2 + w * 2) / 0.52 * h / 10 * 1.15) + 1]
 }
 
 
 
 */

/*
  
 
 
 import XCTest

 class ExampleWallpaperTest: XCTestCase {
     static var allTests = [
         ("Example Test", exampleTest),
     ]

     func exampleTest() {
         XCTAssertEqual(wallpaper(6.3, 4.5, 3.29), "sixteen")
         XCTAssertEqual(wallpaper(0.0, 2.9, 3.29), "zero")
         XCTAssertEqual(wallpaper(6.3, 5.8, 3.13), "seventeen")
         XCTAssertEqual(wallpaper(0.0, 6.7, 2.81), "zero")
     }
 }

 XCTMain([
     testCase(ExampleWallpaperTest.allTests)
 ])
 
 
 
 
 
 
 */

//: [Next](@next)
