import UIKit

func boolean(myNumb: String) -> String {
    var result = ""
    for digit in myNumb {
        if digit.wholeNumberValue ?? 0 < 5 {
            result += "0"
        }
        else {
            result += "1"
        }
    }
    return result
}
print(boolean(myNumb: "123456789"))
