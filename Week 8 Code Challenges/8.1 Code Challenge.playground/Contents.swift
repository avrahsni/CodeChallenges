import UIKit

func sum(nums: [Int], target: Int) -> [Int] {
    
    for i in 0..<nums.count {
        if nums[i] == target {
            return [i]
        }
        else if nums[i] < target {
            for num in (i + 1)..<nums.count {
                if nums[i] + nums[num] == target {
                    return [i, num]
                }
            }
        }
    }
    print("Error, the target number cannot be made using the given array")
    return [0]
}

print(sum(nums: [3, 2, 4], target: 6))
