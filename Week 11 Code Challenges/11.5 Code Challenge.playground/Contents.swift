import UIKit

func primeFinder(_ num: Int) -> Bool {
    guard num > 0 else { return false }
//    var half: Int
//
//    if num % 2 == 0 {
//        half = num / 2
//    } else {
//        half = (num - 1) / 2
//    }
//
//    for i in 0...half {
//        for j in 0...half {
//            if i * j == num {
//                return false
//            }
//        }
//    }
    
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

print(primeFinder(41892))
print(primeFinder(41893))
