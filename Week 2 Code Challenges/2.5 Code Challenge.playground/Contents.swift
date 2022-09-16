import UIKit

func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    let xdif = abs(x2 - x1)
    let ydif = abs(y2 - y1)
    let distSquared = xdif * xdif + ydif * ydif
    let distance = sqrt(distSquared)
    //return sqrt(pow(abs(x2 - x1), 2) + pow(abs(y2 - y1), 2))
    return distance
}

print(distance(x1: 0, y1: 0, x2: 3, y2: 4)) //should equal 5
