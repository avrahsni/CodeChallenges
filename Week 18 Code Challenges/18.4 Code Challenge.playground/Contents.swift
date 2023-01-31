import UIKit

func removeEndExclamation(_ str: String) -> String {
    return str.last == "!" ? String(str.dropLast(1)) : str
}
print(removeEndExclamation("Hello!"))
print(removeEndExclamation("!Hello!!"))

