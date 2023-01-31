import UIKit

func heron(a: Float, b: Float, c: Float) -> Float {
    let s = (a + b + c) / 2
    if let answer = Float(String(format: "%.02f", sqrtf(s * (s-a) * (s-b) * (s-c)))) {
        return answer
    }
    print("ERROR; PROBABLY THE COSMIC WAVES")
    return 0
}
print(heron(a: 5, b: 5, c: 5))

func roundDecF(num: Float, significantDig: Int) -> Float {
    return roundf(num * pow(10, Float(significantDig))) / pow(10, Float(significantDig))
}
print(roundDecF(num: 3.685, significantDig: 2))
