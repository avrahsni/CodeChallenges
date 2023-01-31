import UIKit

func isCaps(_ str: String) -> Bool {
    return str.uppercased() == str
}
print(isCaps("ASDF"))
