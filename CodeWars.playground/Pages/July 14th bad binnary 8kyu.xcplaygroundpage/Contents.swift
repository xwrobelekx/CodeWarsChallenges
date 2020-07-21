//: [Previous](@previous)

import Foundation

func fakeBin(digits: String) -> String {

    var binaryDigits = ""
    digits.forEach({ character in
        print("loop: \(character)")
        binaryDigits += "\(character >= "5" ? "1" : "0")"
    })
    return binaryDigits
}


fakeBin(digits: "152637")

//other solutions:

/*
 
 func fakeBin(digits: String) -> String {
   return digits.map({ $0 < "5" ? "0" : "1" }).joined()
 }
 
 
  func fakeBin(digits: String) -> String {
      return String(describing: digits).compactMap {
          Int(String($0))! < 5 ? "0" : "1"
      }.joined()
  }
 
 
 
 */

//: [Next](@next)
