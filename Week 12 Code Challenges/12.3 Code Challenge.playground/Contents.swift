import UIKit

func compare(_ scores: [Float], to givenScore: Float) -> Bool {
    var average = givenScore
    var percentile: Float = 0
    
    for i in scores {
        average += i
        percentile += givenScore > i ? 1 : 0
    }
    average /= Float(scores.count) + 1
    percentile /= Float(scores.count)/100
    
    print("You are in the \(percentile) percentile")
    print("The average score of the class is \(average)")
    
    return givenScore > average
}

let classScores: [Float] = [12.5, 78, 99, 67, 86, 96, 34, 78, 76, 43, 61, 64]
print(compare(classScores, to: 82))
