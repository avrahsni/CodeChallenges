import UIKit

func calcAverage(_ scoreArray: [Int]) -> Int {
    var average = 0
    for i in 0..<scoreArray.count {
        average += scoreArray[i]
    }
    //scoreArray.reduce(0, +)
    average /= scoreArray.count
    return average
}
let score = calcAverage([89, 78, 93, 98])
print("Your average score is roughly \(score)%")
