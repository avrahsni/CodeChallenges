import UIKit

func factorial(_ num: Int) -> Int? {
    guard num >= 0 else { return nil }
    if num == 0 {
        return 1
    }
    var number = num
    for i in 1..<number {
        number *= i
    }
    return number
}

print(factorial(20))
