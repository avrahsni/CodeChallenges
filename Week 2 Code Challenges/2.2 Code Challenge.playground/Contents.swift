import UIKit

struct Rectangle {
    var sideA: Int
    var sideB: Int
    
    func area() -> Int {
        return sideA * sideB
    }
    func perimeter() -> Int {
        return (2 * sideB) + (2 * sideA)
    }
    
    mutating func scale(k: Int) {
        sideA *= k
        sideB *= k
    }
}
