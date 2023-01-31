import UIKit

func numberExterminator(_ str: String) -> String {
    
//    return str.components(separatedBy: CharacterSet.decimalDigits).joined()
    var results = ""
    for i in str {
        if !"1234567890".contains(i) {
            results.append(i)
        }
    }
    return results
}
print(numberExterminator("3343h745e2326l58l36723o235 7523w02345o80r1234235235l235d0639"))
// Output -- hello world
