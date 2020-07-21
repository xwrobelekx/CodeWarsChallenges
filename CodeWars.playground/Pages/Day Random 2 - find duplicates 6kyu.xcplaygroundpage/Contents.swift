//: [Previous](@previous)

import Foundation



func countDuplicates(_ s:String) -> Int {
    var dict = [String: Int]()
    var finalCount = 0
    
    for character in s.lowercased() {
        if dict["\(character)"] == nil {
            dict["\(character)"] = 1
        } else {
            var charCount = dict["\(character)"]!
            charCount += 1
            dict["\(character)"] = charCount
        }
    }
    
    for (_, value) in dict {
        if value >= 2 {
            finalCount += 1
        }
    }
    
    return finalCount
}


let s = "abcanc"

countDuplicates(s)



/*
//Other Solutions:
func countDuplicates(_ s:String) -> Int {
    var counts: [String: Int] = [:]
    for character in Array(s) {
        counts[character.lowercased(), default: 0] += 1
    }
    return counts.values.filter{ $0 > 1 }.count
}

// one line solution:
 
 func countDuplicates(_ s:String) -> Int {
   return s.lowercased().reduce(into: [:]) { $0[$1, default: 0] += 1 }.filter { $0.1 > 1 }.count
 }

*/



//: [Next](@next)
