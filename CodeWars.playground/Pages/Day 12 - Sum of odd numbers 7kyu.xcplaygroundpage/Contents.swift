//: [Previous](@previous)

import Foundation

/*
 
 // my thought was to go row by row, number by number where we could of used simple math to have same solution.
 
 
 
 
 
 Sum of odd numbers
 
 
 Given the triangle of consecutive odd numbers:

              1
           3     5
        7     9    11
    13    15    17    19
 21    23    25    27    29
 ...
 Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

 rowSumOddNumbers(1) // 1
 rowSumOddNumbers(2) // 3 + 5 = 8
 
 
 */

//row 1 one numbers
//row 2 two numbers
//row 3 three numbers
//...

//row number = numbers in the row
//i just dont know what numbers are in that row - it needs to be calculated
// how would i program to create this pyramid?

//how would i do it manually :
/*
 row 1 = 1  = 1  //index 0 + row 1 = 1
 row 2 = 3, 5   = 8 // index 1 + row 2 = 3
 row 3 = 7, 9, 11   = 27 // index 2 + row 3 = 5
 row 4 = 13, 15, 17, 19     = 64 //index 6
 
 
 
 */



//my first Solution
func rowSumOddNumbers(_ row: Int) -> Int {
    
    var totalOddNumbers = 0
    for number in 0..<row {
        totalOddNumbers += number
    }
    //this is giving us how manu odd numbers were befire this row
//    print(totalOddNumbers)
    
    //now i should have the starting number
    // this row is gone have same amout of numbers as row
    // i just need the nth odd number
    
    let lastOddNumber = totalOddNumbers + row
    //this should give us the last number meaning the count og the last number ( there is gone be this much odd nu ber in the array
//    print(lastOddNumber)
    
    
    //lets loop and create an array if idd numbers till the lastOddNumber
    var arrOfOddNumbers = [Int]()
    var currentOddNumber = 1
    
    //this creates an array with all the odd numbers up to the last number that needs to be add
    for _ in 1...lastOddNumber {
        
        arrOfOddNumbers.append(currentOddNumber)
        currentOddNumber += 2
    }
    
//    print(arrOfOddNumbers)
    
    var sum = 0
    //now we need to sum the numbers from the last odd number to the end of the array
    
    for index in totalOddNumbers..<lastOddNumber{
//        print(arrOfOddNumbers[index])
        sum += arrOfOddNumbers[index]
    }
    print(sum)
    
    return 1
    
    
}

//Time to refactor


func rowSumOddNumbers2(_ row: Int) -> Int {
    
    var totalOddNumbers = 0
    for number in 0..<row {
        totalOddNumbers += number
    }
    //this is giving us how manu odd numbers were befire this row
//    print(totalOddNumbers)
    
    //now i should have the starting number
    // this row is gone have same amout of numbers as row
    // i just need the nth odd number
    
    let lastOddNumber = totalOddNumbers + row
    //this should give us the last number meaning the count og the last number ( there is gone be this much odd nu ber in the array
//    print(lastOddNumber)
    
    
    //lets loop and create an array if idd numbers till the lastOddNumber
    var arrOfOddNumbers = [Int]()
    var currentOddNumber = 1
    
    //this creates an array with all the odd numbers up to the last number that needs to be add
    for _ in 1...lastOddNumber {
        
        arrOfOddNumbers.append(currentOddNumber)
        currentOddNumber += 2
    }
    
//    print(arrOfOddNumbers)
    
    var sum = 0
    //now we need to sum the numbers from the last odd number to the end of the array
    
    for index in totalOddNumbers..<lastOddNumber{
//        print(arrOfOddNumbers[index])
        sum += arrOfOddNumbers[index]
    }
    print(sum)
    
    return 1
    
    
}

// my solution
//func rowSumOddNumbers(_ row: Int) -> Int {
//    var totalCountOFOddNumbersinPreviousRow = 0
//    for number in 0..<row{
//        totalCountOFOddNumbersinPreviousRow += number
//    }
//    let countOfAlltheOddNumbersInAllRows = totalCountOFOddNumbersinPreviousRow + row
//    var arrOfOddNumbers = [Int]()
//    var currentOddNumber = 1
//    for _ in 1...countOfAlltheOddNumbersInAllRows {
//
//        arrOfOddNumbers.append(currentOddNumber)
//        currentOddNumber += 2
//    }
//    var sum = 0
//    for index in totalCountOFOddNumbersinPreviousRow..<countOfAlltheOddNumbersInAllRows{
//        sum += arrOfOddNumbers[index]
//    }
//    return sum
//}
//
//





rowSumOddNumbers(5)

/*
 
 
 //Other solutions:
 func rowSumOddNumbers(_ row: Int) -> Int {
   return row * row * row
 }
 
 
 func rowSumOddNumbers(_ row: Int) -> Int {
   var currentNumber = 1
   var sum = 0
   for r in 1...row {
     for _ in 1...r {
       if r == row {
         sum += currentNumber
       }
       currentNumber += 2
     }
   }
   return sum
 }
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasic),
     ]

     func testBasic() {
         XCTAssertEqual(rowSumOddNumbers(1), 1)
         XCTAssertEqual(rowSumOddNumbers(2), 8)
         XCTAssertEqual(rowSumOddNumbers(13), 2197)
         XCTAssertEqual(rowSumOddNumbers(19), 6859)
         XCTAssertEqual(rowSumOddNumbers(41), 68921)
         XCTAssertEqual(rowSumOddNumbers(42), 74088)
         XCTAssertEqual(rowSumOddNumbers(74), 405224)
         XCTAssertEqual(rowSumOddNumbers(86), 636056)
         XCTAssertEqual(rowSumOddNumbers(93), 804357)
         XCTAssertEqual(rowSumOddNumbers(101), 1030301)
     }

 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */



//: [Next](@next)
