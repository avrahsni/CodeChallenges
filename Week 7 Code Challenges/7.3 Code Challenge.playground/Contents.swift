import UIKit

func multTable(_ num: Int) -> String {
    var table = ""
    for i in 1...10 {
        table += "\(i) * \(num) = \(num * i)\n"
    }
    return table
}
print(multTable(5))
