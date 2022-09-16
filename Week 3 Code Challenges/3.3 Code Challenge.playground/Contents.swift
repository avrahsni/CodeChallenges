import UIKit

func sumSquare(myArray: [Int]) -> Int {
    var sum = 0
    for num in myArray {
        sum += num * num
    }
    return sum
}
print(sumSquare(myArray: [1, 2, 3]))
