import UIKit

func headsAndLegs(arr: [Int]) -> [Int]? {
    if arr[0] == 0 && arr[1] == 0 {
        return [0, 0]
    } else if arr[0] < 0 || arr[1] < 0 {
        return nil
    }
    
    let cows = Double(arr[1] - 2 * arr[0]) / 2
    let chickens = Double(arr[0]) - cows
    
    if cows.remainder(dividingBy: 1) > 0 || chickens.remainder(dividingBy: 1) > 0 {
        return nil
    }
    return [Int(chickens), Int(cows)]
}
