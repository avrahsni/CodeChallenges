import UIKit

func divisible(n: Int, x: Int, y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}

print(divisible(n: 100, x: 5, y: 3))
