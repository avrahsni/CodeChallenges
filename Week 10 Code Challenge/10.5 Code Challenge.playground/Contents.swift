import UIKit

func plurals(_ strings: [String]) {
    var words = strings
    
    for word in 0..<strings.count {
        if words[word].removeLast().lowercased() == "s" && words[word].last?.lowercased() != "s" {
            print("\(words[word])s")
        }
    }
}
let myArray = ["Hello", "world", "dogs", "frogs", "bogS", "logs", "stewardess", "stewardesses"]
plurals(myArray)
