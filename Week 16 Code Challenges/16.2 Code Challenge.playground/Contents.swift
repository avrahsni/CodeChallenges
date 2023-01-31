import UIKit

func binaryToInt(binary: String) -> Int? {
    var decimal = 0
    var counter = 0
    for i in binary.reversed() {
        switch i {
        case "0":
            break
        case "1":
            decimal += Int(pow(2, Double(counter)))
        default:
            print("Invalid Input")
            return nil
        }
        counter += 1
    }
    return decimal
}
print(binaryToInt(binary: "1001"))
