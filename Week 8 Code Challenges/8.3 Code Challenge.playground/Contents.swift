import UIKit

let myArray = [6, 5, 3, 1, 8, 7, 2, 4]
func insertionSort(_ nums: [Int]) -> [Int] {
    
    var initialPos: Int
    //var newPos: Int
    var numbers = nums
    
    for j in 1..<numbers.count {
        initialPos = j
        var temp = numbers.remove(at: initialPos)
        for i in 0..<initialPos {
            if temp < numbers[i] {
                numbers.insert(temp, at: i)
                if numbers.count > nums.count {
                    numbers.remove(at: i)
                }
                continue
            }
            
        }
        if numbers.count < nums.count {
            numbers.append(temp)
        }
    }
    
    
    return numbers
}

print(insertionSort(myArray))
