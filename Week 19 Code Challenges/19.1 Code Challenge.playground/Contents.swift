import UIKit

func polygon(_ length: Double, _ width: Double) -> Double? {
    guard length >= 0, width >= 0 else { return nil }
    return length == width ? length * width : 2 * (length + width)
}
print(polygon(3, 3))
print(polygon(4, 2))
