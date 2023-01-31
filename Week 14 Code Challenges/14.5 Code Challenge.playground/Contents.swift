import UIKit

func calcDist(numOfPillars: Int, distBetweenPillars: Double, width: Double) -> Double? {
    guard numOfPillars > 1, distBetweenPillars > 10, distBetweenPillars < 30, width < 50, width > 10 else { return nil }
    return ((Double(numOfPillars) * (width - 2)) + (Double(numOfPillars - 1) * 100 * distBetweenPillars)) / 100
}

print(calcDist(numOfPillars: 10, distBetweenPillars: 20, width: 35))
