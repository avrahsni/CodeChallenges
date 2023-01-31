import UIKit

func letterTally(_ myString: String) {
    
    var tally = [String: Int]()
    
    for letter in myString {
        tally["\(letter.lowercased())", default: 0] += 1
    }
    for (key, value) in tally {
        print("There is(are) \(value) '\(key)'(s) in the given string \n")
    }
}
let myString = "Hello world hello"
letterTally(myString)
