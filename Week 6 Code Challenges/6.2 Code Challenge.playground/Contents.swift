import UIKit

func findEven(_ num: Int) -> Int? {
    guard num >= 1 else {return nil}
    return (num * 2) - 2
}

if let even = findEven(1298734) {
    print(even)
}
print(findEven(1)!)
print(findEven(3)!)
print(findEven(100)!)
