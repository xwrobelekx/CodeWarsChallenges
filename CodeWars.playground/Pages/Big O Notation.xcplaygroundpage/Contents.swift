//: [Previous](@previous)

import Foundation


var numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//for number in 11...20 {
//    numbersArray.append(number)
//}

// Constant time:
// O()
func printNumber(){
    for number in 0..<5 {
        print(numbersArray[number])
    }
}

printNumber()


// Linear O(n)
func printNumbers(){
    for number in numbersArray {
        print(number)
    }
}

printNumbers()

func find2(number: Int, in array: [Int]) -> Bool{
    var counter = 0
    for num in array {
        counter += 1
        if num == number {
            print("➡️\(counter)")
            return true
        }
    }
    print("➡️\(counter)")
    return false
}

find2(number: 12, in: numbersArray)

//Quadratic O(n^2)
func printNumberWithEveryNumber(){
    for i in  numbersArray {
        for j in  numbersArray {
        print(i, j)
        }
    }
}
printNumberWithEveryNumber()



//Logaritmic Time O(log(n))
//Assumption - the array is sorted

func find(number: Int, in array: [Int]) -> Bool{
    let middleIndex = array.count/2
    
    if number == array[middleIndex]{
        return true
    } else if array.count == 1 {
        return false
    }
    
    if number < array[middleIndex]{
        return find(number: number, in: [Int](array[..<middleIndex]))
    } else {
        return find(number: number, in: [Int](array[middleIndex...]))
    }
    
}

find(number: 12, in: numbersArray)


//Exponantial Time Complexity - O(2^n)
//very bad

func fibonnaciSequemce(number: Int) -> Int{
    if number <= 1 {
        return number
    }
    
    return fibonnaciSequemce(number: number - 1) + fibonnaciSequemce(number: number - 1)
    
}

fibonnaciSequemce(number: 5)


// O(2n)
func printNumber3(){
    for num in numbersArray{
        print(num)
    }
    
    for num in numbersArray {
        print(num + 1)
    }
}






//: [Next](@next)
