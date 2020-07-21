//: [Previous](@previous)

import Foundation

/*
 You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

 Example:

 longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

 n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
 */



// My solution
func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if strarr.isEmpty || k > strarr.count || k <= 0 { return "" }
    
    
    //take k which is number of words needed
    
    // need to start with first word and add a second then need to save it
    
    // then need to take second word and third then compare it against the saved word and if its larger then replace it
    
    // then repeat the process untill whe array is exhaused
    
    // be care full not to go over the index in array
    
    
    var joindedWords = ""
    
    for (index, word) in strarr.enumerated() {
        
        var localJoinedWord = word
        
        for nextWordNumber in 1..<k {
            print("k = \(nextWordNumber), index = \(index + nextWordNumber), strr.count - k = \(strarr.count - k) ")
            if index < strarr.count - k + 1 {
                localJoinedWord += strarr[index + nextWordNumber]
                print(localJoinedWord)
            }
        }
        
        if localJoinedWord.count > joindedWords.count {
            joindedWords = localJoinedWord
        }
    }
    
    return joindedWords
}


var test1 = ["kamil", "Daniel", "Mini", "Ewa", "Grass", "Phone"]


longestConsec(test1, 2)


/*
 
 Other solutions:
 
 func longestConsec(_ strarr: [String], _ k: Int) -> String {
     var longest: String = ""
     let n = strarr.count
     if n == 0 || k > n || k <= 0 {return longest}
     for i in 0..<(n - k + 1) {
         let str: String = strarr[i..<i + k].joined(separator: "")
         if str.characters.count > longest.characters.count {longest = str}
     }
     return longest
 }
 
 
 
 
 
 
 
 Tests:
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("longestConsec", testExample),
     ]

     func testing(_ strarr: [String], _ k: Int, _ expected: String) {
         XCTAssertEqual(longestConsec(strarr, k), expected)
     }

     func testExample() {
         testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta")
         testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1,
             "oocccffuucccjjjkkkjyyyeehh")
         testing([], 3, "")
         testing(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2,
             "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])


 
 */






//: [Next](@next)
