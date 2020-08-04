//: [Previous](@previous)

import Foundation

// Examples on how to perform operations on Strings using provided methods


//Extracting componets from String separated by character

let time = "12:25"
let a = time.components(separatedBy: ":")
print(a)
let hour = a[0]
let minute = a[1]


//Reversing a String:
let b = "Kamil"
b.reversed()
//ned to cast it as String othervise its a Reversed Collection - Basicly it becomes a new string when its acctually used for the first time.
let reversedB = String(b.reversed())

//Finding the shortest word count in a String
let c = "It's raining today."
let shortestWord = c.components(separatedBy: " ").map { $0.count }.min() ?? 0
print(shortestWord)


//Mapping thru the string
func fakeBin(digits: String) -> String {
  return digits.map({ $0 < "5" ? "0" : "1" }).joined()
}
fakeBin(digits: "1293435")


//Capitalizing every word in a sentence
var s = "its raining today. no its not"
s.capitalized(with: nil)



//: [Next](@next)
