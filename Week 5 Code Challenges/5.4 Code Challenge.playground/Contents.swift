import UIKit

func addPositives(_ numArray: [Double]) -> Double {
    var sum = 0.0
    for i in numArray {
        sum += i > 0 ? i : 0
    }
//    return numArray.reduce(0) { partialResult, nextNum in
//        return partialResult + nextNum > 0 ? nextNum : 0
//    }
    return sum
}
print(addPositives([1, -4, 7, 12]))
print(addPositives([-1, -4, -7, -12]))
