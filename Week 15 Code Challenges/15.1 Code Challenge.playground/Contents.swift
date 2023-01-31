import UIKit

func sumOfIntsInString(_ string: String) -> Int {
    var isNumber = false
    var results = [Int]()
    var arrayIndex = -1
    
    for i in string {
        if isNumber {
            if let num = Int(String(i)) {
                let temp = results[arrayIndex]
                results[arrayIndex] = (Int("\(temp)\(num)")!)
            } else {
                isNumber = false
            }
        } else {
            if let num = Int(String(i)) {
                isNumber = true
                arrayIndex += 1
                results.append(num)
            } else {
                isNumber = false
            }
        }
        
    }
    
    return results.reduce(0, +)
}

print(sumOfIntsInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"))
