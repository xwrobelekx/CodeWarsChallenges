//: [Previous](@previous)

import Foundation

//Convert Hex String to RGB
/*
 
 When working with color values it can sometimes be useful to extract the individual red, green, and blue (RGB) component values for a color. Implement a function that meets these requirements:

 Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
 Returns an object with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
 Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

 Example

 "#FF9933" --> {r: 255, g: 153, b: 51}
 */

import Foundation

struct RGB: CustomStringConvertible, Equatable {
    var r:Int
    var g:Int
    var b:Int
    init(_ r:Int, _ g:Int, _ b:Int) {
        self.r = r
        self.g = g
        self.b = b
    }
    static func ==(left:RGB, right:RGB) -> Bool {
        return left.r == right.r && left.g == right.g && left.b == right.b
    }
    var description: String {
        return "{R:\(r), G:\(g), B:\(b)}"
    }
}

func hexStringToRGB(_ str:String) -> RGB {
  
  //first two numbers are for red
  // second two numbers are for green
  //last two numbers are for blue
  // A = 10, B = 11, C = 12, D = 13, E = 14, F = 15
  // multiplu first number by 16 then add the second number
  // example #FF9933 = (15*16 + 15*1) = 255 this is red
  // 9*16 + 9*1 = 153 this is green
  // 3*16 + 3*1 = 51 this is blue
    
    
 // first decompose the string, or conver it to numbers
 
    var arrayOfNumber: [Int] = []
    
    for character in str.lowercased() {
        if character == "#" { continue }
        switch character {
        case "a" : arrayOfNumber.append(10)
        case "b" : arrayOfNumber.append(11)
        case "c" : arrayOfNumber.append(12)
        case "d" : arrayOfNumber.append(13)
        case "e" : arrayOfNumber.append(14)
        case "f" : arrayOfNumber.append(15)
        default : arrayOfNumber.append(Int("\(character)")!)
        }
    }
  print(arrayOfNumber)
    
    // now i just need to go thru those numbers and mulitply the first one by 16, amd the second one by 1 then ad them together and so on
    
    let red = (arrayOfNumber[0] * 16) + (arrayOfNumber[1])
    let green = (arrayOfNumber[2] * 16) + (arrayOfNumber[3])
    let blue = (arrayOfNumber[4] * 16) + (arrayOfNumber[5])
    
  return RGB(red, green, blue)
}

hexStringToRGB("#F1D2C3")


/*
 //Other solutions:
 
 func hexStringToRGB(_ str: String) -> RGB {
     let nums = Array(str.dropFirst())
     let r = Int(String(nums[...1]), radix: 16)!
     let g = Int(String(nums[2...3]), radix: 16)!
     let b = Int(String(nums[4...5]), radix: 16)!

     return RGB(r, g, b)
 }
 
 
 //Tests:
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("testHexStringToRGB", testHexStringToRGB),
     ]

     func testHexStringToRGB() {
         XCTAssertEqual(hexStringToRGB("#FF9933"), RGB(255, 153, 51))
         XCTAssertEqual(hexStringToRGB("#beaded"), RGB(190, 173, 237))
         XCTAssertEqual(hexStringToRGB("#000000"), RGB(0, 0, 0))
         XCTAssertEqual(hexStringToRGB("#111111"), RGB(17, 17, 17))
         XCTAssertEqual(hexStringToRGB("#Fa3456"), RGB(250, 52, 86))
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */


//: [Next](@next)
