import UIKit

struct Point: CustomStringConvertible {
    var description: String {
        "(\(x), \(y))"
    }
    var x: Int
    var y: Int
}

func symmetric(p: Point, q: Point) -> Point {
    return Point(x: (q.x - (p.x - q.x)), y: (q.y - (p.y - q.y)))
}
print(symmetric(p: Point(x: 2, y: 6), q: Point(x: -2, y: -6)))
