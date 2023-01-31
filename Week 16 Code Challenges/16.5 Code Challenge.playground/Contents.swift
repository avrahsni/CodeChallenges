import UIKit

func sumDescendingDif(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return 0 }
    var arr: [Int] = nums.sorted(by: >)
    var sum = 0
    for i in 0..<(arr.count - 1) {
        sum += arr[i] - arr[i + 1]
    }
    return sum
    
}
let myArray = [2, 1, 10]
print(sumDescendingDif(myArray))
