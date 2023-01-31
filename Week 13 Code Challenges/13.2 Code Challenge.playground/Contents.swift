import UIKit

func addMid(_ nums: [Int]) -> Int {
    
    var sortedNums = nums.sorted()
    sortedNums.removeFirst()
    sortedNums.removeLast()
    return sortedNums.reduce(0, +)
    
//    return nums.sorted().dropFirst().dropLast().reduce(0, +)
    
//    var total = 0
//    for i in 1..<(sortedNums.count - 1) {
//        total += sortedNums[i]
//    }
//    return total
}
let nums = [6, 2, 1, 8, 10]
print(addMid(nums))




