import UIKit

var myArray = [9, 3, 5, 2, 1, 4, 8, 6, 7, 0]

func selectionSort(_ nums: [Int]) -> [Int] {
    
    var numbers = nums
    if nums.count > 1 {
        var num: Int
        var position = 0
        for j in 0..<nums.count {
            num = numbers[j]
            for i in j..<numbers.count {
                if numbers[i] < num {
                    position = i
                    num = numbers[i]
                }
            }
            numbers.remove(at: position)
            numbers.insert(num, at: j)
        }
    }
    return numbers
    
}
print(selectionSort(myArray))
