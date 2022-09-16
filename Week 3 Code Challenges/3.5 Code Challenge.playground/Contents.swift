import UIKit

func squares(_ myArray: [Int]) -> [Int] {
    var result = myArray
    for i in 0..<myArray.count {
        if sqrt(Double(result[i])).truncatingRemainder(dividingBy: 1) == 0 {
            result[i] = Int(sqrt(Double(result[i])))
        }
        else {
            result[i] *= result[i]
        }
    }
    return result
}
print(squares([4, 3, 9, 7, 2, 1]))
