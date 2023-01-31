import UIKit

func isDigit(_ chars: String) -> Bool {
    return Int(chars) ?? 11 <= 9 && Int(chars) ?? -1 >= 0 ? true : false
}
print(isDigit("2"))
