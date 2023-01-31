import UIKit

func removeSpaces(input: String) -> String {
    var output = input
    var counter = 0
    for  i in 0..<input.count {
        if input[input.index(input.startIndex, offsetBy: i)] == " " {
            let j = output.index(output.startIndex, offsetBy: i - counter)
            output.remove(at: j)
            counter += 1
        }
    }
    return output
}

print(removeSpaces(input: "hello world hello world"))
