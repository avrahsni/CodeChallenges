import UIKit

func stringy(size: Int) -> String {
    var binary = "1"
    for _ in 0..<(size - 1) {
        if Int(binary)! % 2 == 0{
            binary.append("1")
        }
        else {
            binary.append("0")
        }
    }
    return binary
}
print(stringy(size: 6))
print(stringy(size: 4))
print(stringy(size: 12))
