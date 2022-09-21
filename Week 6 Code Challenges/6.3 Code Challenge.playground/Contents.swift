import UIKit

func timeInMili(h: Int, m: Int, s: Int) -> Int {
    return ((h * 3600) + (m * 60) + s) * 1000
}
print(timeInMili(h: 0, m: 1, s: 1))
