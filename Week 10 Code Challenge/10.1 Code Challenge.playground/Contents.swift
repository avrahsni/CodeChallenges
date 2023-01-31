import UIKit

func countWords(_ myString: String) -> [String: Int] {
    var frequencyList = [String: Int]()
    
    let sentenceArray = myString.split(separator: " ")
    for word in sentenceArray {
        if frequencyList[String(word)] != nil {
            frequencyList[String(word)]! += 1
        }
        else {
            frequencyList[String(word)] = 1
        }
    }
    
    return frequencyList
}
let myString = "hello world hello world hello"
print(countWords(myString))
