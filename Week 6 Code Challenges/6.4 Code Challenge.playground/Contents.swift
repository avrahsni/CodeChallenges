import UIKit

func summation(_ num: Int) -> Int {
    guard num > 0 else {return num}
    var sum = 0
    for i in 1...num {
        sum += i
    }
    return sum
}
print(summation(2))
print(summation(8))
