import UIKit

func consecutive(input: [Int]) -> Int? {
    for i in 1..<input.count {
        if input[i] != input[i - 1] + 1 {
            return input[i]
        }
    }
    return nil
}
var myArray = [1, 2, 3, 4, 5, 6, 13]
print(consecutive(input: myArray)!)
