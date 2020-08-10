//: [Previous](@previous)

import Foundation

/*
 
 Direction Reduction 5kyu
 
 Once upon a time, on a way through the old wild mountainous west,…

 … a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

 Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

 How I crossed a mountain desert the smart way.

 The directions given to the man are, for example, the following (depending on the language):

 ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
 or

 { "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
 or

 [North, South, South, East, West, North, West]
 You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:

 ["WEST"]
 or

 { "WEST" }
 or

 [West]
 Other examples:

 In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.

 The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).

 In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].

 Task

 Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).

 The Haskell version takes a list of directions with data Direction = North | East | West | South.
 The Clojure version returns nil when the path is reduced to nothing.
 The Rust version takes a slice of enum Direction {NORTH, SOUTH, EAST, WEST}.
 See more examples in "Sample Tests:"

 Notes

 Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
 if you want to translate, please ask before translating.
 
 
 */

func dirReduc(_ arr: [String]) -> [String] {
    guard arr.count >= 2 else { return arr}
    var workingArr = arr
    var result : [String] = []
    
    //how to easly define whats oposite
    //    var item1 = arr[0]
    //    var item2 = arr[1]
    
    
    for index in 0...(workingArr.count - 1){
        
        if index + 1 <= workingArr.count - 1 {
            print("item1: \(workingArr[index]), item2: \(workingArr[index + 1])")
            
            if ((workingArr[index] == "EAST" && workingArr[index + 1] == "WEST") || (workingArr[index]  == "WEST" && workingArr[index + 1] == "EAST")) {
                print("we got a match EW, WE")
                workingArr.remove(at: index + 1)
                workingArr.remove(at: index)
                
                
            } else if ((workingArr[index] == "NORTH" && workingArr[index + 1] == "SOUTH") || (workingArr[index]  == "SOUTH" && workingArr[index + 1] == "NORTH")){
              print("we got a match NS, SN")
                workingArr.remove(at: index + 1)
                             workingArr.remove(at: index)
            } else {
                print(" 1 appending: \(workingArr[index])")
                result.append(workingArr[index])
            }
        } else {
            print("index out of range")
         print(" 2 appending: \(workingArr[index])")
        result.append(workingArr[index])
        }
        
    }
    
    
    print(result)
    return result
}


dirReduc(["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]) //["EAST", "NORTH"]



/*
 //other solutions:
 
 
 
 // Tests:
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("dirReduc", testExample),
     ]

     func testing(_ arr: [String], _ expected: [String]) {
         let ans = dirReduc(arr)
         XCTAssertTrue(ans == expected, "should return \(expected), got \(ans)")
     }
      
     func testExample() {
         var a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
         testing(a, ["WEST"])
         a = ["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]
         testing(a, ["EAST", "NORTH"])
         a = ["NORTH", "WEST", "SOUTH", "EAST"]
         testing(a, ["NORTH", "WEST", "SOUTH", "EAST"])
     }
 }
          
 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */
//: [Next](@next)
