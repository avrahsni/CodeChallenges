import UIKit

func countSentences(_ paragraph: String) -> Int {
    let punctuation = [". ", "! ", "? "]
    var sentencesArray = paragraph.components(separatedBy: ". ")
    var count = 0
    for _ in sentencesArray {
        count += 1
    }
    
//    for i in 0..<paragraph.count {
//        paragraph.Index(i)
//        var split: String = "\(paragraph[i])"
//        split.append("\(paragraph[i+1])"
//        if  split == ". " || "!. " || "? " {
//
//        }
//    }
    
    return count
}
let paragraph = "And I don't like them putting chemicals in the water that turn the friggin frogs gay.  Here is another sentence. And a third. "
print(countSentences(paragraph))
