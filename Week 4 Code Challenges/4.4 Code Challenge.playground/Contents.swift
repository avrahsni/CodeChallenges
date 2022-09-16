import UIKit

func arrayToN(_ myArray: [Int], to n: Int) -> [Int]? {
    guard n <= myArray.count else {
        return nil
    }
//    var newArray = [Int]()
//    for i in 0..<n {
//        newArray.append(myArray[i])
//    }
//    return newArray
    return Array(myArray[..<n])
}
if let arrayToN = arrayToN([0, 1, 2, 3, 4, 5, 6], to: 4) {
    print(arrayToN)
}

