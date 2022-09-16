import UIKit
import Foundation

func mult(_ arr: [Int]) -> [Int]{
    
    var arr2 = [Int]()
    for int in arr {
        //arr2 += [int * 5] -- THIS IS MORE TAXING
        arr2.append(int * 5)
    }
    print(arr2)
    return arr
}
var numbs = [3, 4, 5]
mult(numbs)
