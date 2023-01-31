import UIKit

func reverseSort(_ strings: [String]) -> [String] {
    var myArray = strings
    for (i) in 0..<myArray.count {
        myArray[i] = myArray[i].capitalized
    }
    return myArray.sorted(by: >)
}
let names = ["bob", "Jill", "sally"]
print(reverseSort(names))
