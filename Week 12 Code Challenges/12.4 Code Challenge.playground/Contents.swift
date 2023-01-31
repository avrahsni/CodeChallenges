import UIKit

func multiples(_ base: Int, _ limit: Int) -> [Int]? {
    guard base < limit && base > 0 else { return nil }
    var output = [Int]()
    for i in base...limit {
        if i % base == 0 {
            output.append(i)
        }
    }
    
    return output
}

print(multiples(3, 16)!)
