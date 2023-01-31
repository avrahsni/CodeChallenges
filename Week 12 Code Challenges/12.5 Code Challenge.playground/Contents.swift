import UIKit

func powers(nums: [Int], n: Int) -> Int? {
    guard n <= nums.count - 1 else { return nil }
    return Int(pow(Double(nums[n]), Double(n)))
}
print(powers(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9], n: 3)!)
