import UIKit

func sls(_ a: Int?, _ b: Int?) -> Int? {
    guard a != nil || b != nil else { print("input error"); return nil }
    return a == nil ? b : b == nil ? a : a! - b! > 0 ? Int("\(b!)\(a!)\(b!)") : Int("\(a!)\(b!)\(a!)")
}
print(sls(nil, 9))
