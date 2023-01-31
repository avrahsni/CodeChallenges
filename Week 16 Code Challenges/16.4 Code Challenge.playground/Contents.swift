import UIKit

func duplicate(_ str: String) -> String {
    return str.map { "\($0)\($0)" }.reduce("", +)
}
print(duplicate("Hello World"))
