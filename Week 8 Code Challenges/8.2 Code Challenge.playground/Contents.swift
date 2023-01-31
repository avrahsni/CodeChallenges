import UIKit

func bubbleSort(nums: [Int]) -> [Int] {
    
    var arr = nums
    
    if arr.count > 1 {
        print(arr.count)
        for i in 0..<(arr.count - 1) {
            if arr[i] > arr[i + 1] {
                var temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            }
        }
        var temp = arr.last
        arr = bubbleSort(nums: arr.dropLast())
        arr.append(temp!)
    }
    return arr
}

print(bubbleSort(nums: [3, 5, 1, 12, 7, 6, 4]))

