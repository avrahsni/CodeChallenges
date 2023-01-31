import UIKit

func iGotThePowers(n: Int) -> [Int] {
    var result = [Int]()
    for i in 0...n {
        result.append(Int(pow(2.0, Double(i))))
    }
    return result
}
print(iGotThePowers(n: 3))
