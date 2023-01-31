import UIKit

func sumOfTwoSmallestIntegersIn(_ arr: [Int]) -> Int? {
    guard arr.count > 3 else { return nil }
    let posArr = arr.filter({$0 >= 0})
    let minCount = posArr.filter({$0 == posArr.min()}).count
    let second = posArr.filter() {
        minCount > 1 ? $0 == posArr.min() : $0 > posArr.min() ?? 0
    }
    return (posArr.min() ?? 0) + (second.min() ?? 0)
}

let myArr = [19, 5, 42, 2, 77]
print(sumOfTwoSmallestIntegersIn(myArr))
