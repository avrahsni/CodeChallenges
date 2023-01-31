import UIKit

extension String {
    func isPalindrome() -> Bool {
        
        var spaceLess = self.replacingOccurrences(of: " ", with: "").lowercased()
        let phraseBackwards = String(spaceLess.reversed()).lowercased()
        return spaceLess.lowercased() == phraseBackwards.lowercased()
    }
}
let strings = ["Race Car", "daD", "golf", "jury", "mom"]
for string in strings {
    print("\(string) - \(string.isPalindrome())")
}

let phrases = ["Too bad I hid a boot", "Taco Cat", "Totally not a palindrome"]
for phrase in phrases {
    print("\(phrase) - \(phrase.isPalindrome())")
}
