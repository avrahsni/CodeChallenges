import UIKit

func close_compare(a: Int, b: Int, margin: Int? = 0) -> Int {
    return abs(a - b) < margin! ? 0 : a > b ? 1 : -1
}
print(close_compare(a: 3, b: -6))
