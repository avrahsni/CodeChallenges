import UIKit

func calcVolume(_ dimentions: [Int]) -> Int? {
    if dimentions.count != 3 {
        return nil
    }
    var vol = 0
    
    for i in 0..<dimentions.count {
        vol += i < 1 ? dimentions[i] : vol * (dimentions[i] - 1)
    }
    return vol
}
func volumeDifference(a: [Int], b: [Int]) -> Int? {
    if a.count != 3 || b.count != 3 {
        return nil
    }
    if let aVol = calcVolume(a), let bVol = calcVolume(b) {
        return abs(aVol - bVol)
    }
    return nil
}

print(volumeDifference(a: [2, 2, 3], b: [5, 4, 1])!)
