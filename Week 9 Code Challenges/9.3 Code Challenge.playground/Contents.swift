import UIKit

enum phoneError: Error {
    case invalidNumber
}

func phoneNumber(_ pNum: String) throws -> String {
    var num = pNum
    if pNum.count == 12 {
        num.remove(at: num.index(num.startIndex, offsetBy: 3))
        num.remove(at: num.index(num.startIndex, offsetBy: 6))
        if Int(num) == nil {
            num = pNum
            throw phoneError.invalidNumber
        }
    }
    guard num.count == 10 else {
        throw phoneError.invalidNumber
    }
    num.insert("-", at: num.index(num.startIndex, offsetBy: 3))
    num.insert("-", at: num.index(num.startIndex, offsetBy: 7))
    return num
}
print(try phoneNumber("801-209-8103"))
