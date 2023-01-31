import UIKit

func sumMul(n: Int, m: Int) -> Int? {
    guard n > 0, m > n else { return nil }
    var result = 0
    for i in 1...m {
        if i * n < m {
            result += i * n
        }
        else {
            return result
        }
    }
    return result
}
print(sumMul(n: 4, m: 123))
