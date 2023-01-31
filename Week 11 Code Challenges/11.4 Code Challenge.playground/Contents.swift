import UIKit

func arrayChanger(_ nums: [Int]?) -> [Int]? {
    guard let nums = nums, nums != [Int]() else { return nil }
    
    var output = [0, 0]
    
    for i in nums {
        if i > 0 {
            output[0] += 1
        }
        else if i < 0 {
            output[1] += i;
        }
    }
    return output
}
let myArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
if let data = arrayChanger(myArray) {
    print(data)
}
else {
    print("ERROR -- BAD DATA")
}

