import UIKit

func between(_ a: Int, _ b: Int) -> [Int]{
    guard a < b else { return [0] }
    var results = [Int]()
    for i in a...b {
        if i % a == 0 { // Black diamond; for normal, just remove the 'if' statement
            results.append(i)
        }
    }
    return results
}
print(between(3, 7))
