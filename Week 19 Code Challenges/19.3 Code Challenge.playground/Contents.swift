import UIKit

func asciiCheck(_ arr: [Int]) -> [String: [Int]] {
    var vowels: [String: [Int]] = ["a": [], "e": [], "i": [], "o": [], "u": []]
    for (i, num) in arr.enumerated() {
        switch num {
        case 97:
            vowels["a"]?.append(i)
        case 101:
            vowels["e"]?.append(i)
        case 105:
            vowels["i"]?.append(i)
        case 111:
            vowels["o"]?.append(i)
        case 117:
            vowels["u"]?.append(i)
        default:
            break
        }
    }
    return vowels
}

print(asciiCheck([32, 64, 86, 90, 57, 097, 87, 125, 103, 105]))
