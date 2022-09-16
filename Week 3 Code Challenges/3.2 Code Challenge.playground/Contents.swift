import UIKit

let myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func arrLoop(arr: [Int]) {
    for num in arr {
        if num % 2 == 0 /*num.isMultipleOf(2)*/{
            print("\(num): Even")
        }
        else {
            print("\(num): Odd")
        }
    }
}

arrLoop(arr: myArray)
