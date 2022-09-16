import UIKit

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let averageScore = (s1 + s2 + s3) / 3
    
    switch averageScore {
    case 0..<60:
        return "\(averageScore)% is an F"
    case 60..<70:
        return "\(averageScore)% is a D"
    case 70..<80:
        return "\(averageScore)% is a C"
    case 80..<90:
        return "\(averageScore)% is a B"
    default:
        return "\(averageScore)% is an A"
    }
}
print(getGrade(37, 83, 94))
